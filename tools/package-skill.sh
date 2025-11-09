#!/bin/bash

###############################################################################
# Claude Skill Packaging Script
#
# Purpose: Package a skill directory into a .skill file for Claude Chat/Code
# Usage:   ./package-skill.sh [skill-directory]
# Output:  Creates skill-name.skill in parent directory
#
# Author:  AI Agent
# Version: 1.0.0
# Date:    November 2025
###############################################################################

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Display usage information
usage() {
    echo -e "${BLUE}Claude Skill Packaging Script${NC}"
    echo ""
    echo "Usage: $0 [skill-directory]"
    echo ""
    echo "Arguments:"
    echo "  skill-directory    Path to skill directory (default: current directory)"
    echo ""
    echo "Examples:"
    echo "  $0                           # Package current directory"
    echo "  $0 ms-enterprise-architect   # Package specific skill"
    echo "  $0 ../my-custom-skill        # Package skill from parent directory"
    echo ""
    exit 1
}

# Parse arguments
SKILL_DIR="${1:-.}"

# Resolve to absolute path
SKILL_DIR=$(cd "$SKILL_DIR" && pwd)
SKILL_NAME=$(basename "$SKILL_DIR")
PARENT_DIR=$(dirname "$SKILL_DIR")
OUTPUT_FILE="${PARENT_DIR}/${SKILL_NAME}.skill"

echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║        Claude Skill Packaging Script v1.0.0               ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Validate skill directory exists
if [ ! -d "$SKILL_DIR" ]; then
    echo -e "${RED}✗ Error: Directory not found: $SKILL_DIR${NC}"
    exit 1
fi

echo -e "${YELLOW}→ Skill Directory:${NC} $SKILL_DIR"
echo -e "${YELLOW}→ Skill Name:${NC} $SKILL_NAME"
echo ""

# Validate SKILL.md exists
if [ ! -f "$SKILL_DIR/SKILL.md" ]; then
    echo -e "${RED}✗ Error: SKILL.md not found in $SKILL_DIR${NC}"
    echo -e "${RED}  This does not appear to be a valid Claude skill directory.${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Valid skill directory detected${NC}"
echo ""

# Create temporary directory for staging
TEMP_DIR=$(mktemp -d)
STAGING_DIR="$TEMP_DIR/$SKILL_NAME"

echo -e "${YELLOW}→ Staging skill files...${NC}"

# Copy skill to staging directory
mkdir -p "$STAGING_DIR"
rsync -a \
    --exclude='.git' \
    --exclude='.DS_Store' \
    --exclude='*.skill' \
    --exclude='node_modules' \
    --exclude='tests/' \
    --exclude='plans/' \
    --exclude='.skillrc' \
    "$SKILL_DIR/" "$STAGING_DIR/"

# Count files
FILE_COUNT=$(find "$STAGING_DIR" -type f | wc -l | tr -d ' ')
echo -e "${GREEN}✓ Staged $FILE_COUNT files${NC}"

# Check if output file already exists
if [ -f "$OUTPUT_FILE" ]; then
    echo ""
    echo -e "${YELLOW}⚠ Warning: $OUTPUT_FILE already exists${NC}"
    read -p "  Overwrite? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${RED}✗ Packaging cancelled${NC}"
        rm -rf "$TEMP_DIR"
        exit 0
    fi
    rm -f "$OUTPUT_FILE"
fi

echo ""
echo -e "${YELLOW}→ Creating .skill package...${NC}"

# Create tar.gz archive with .skill extension
cd "$TEMP_DIR"
tar -czf "$OUTPUT_FILE" "$SKILL_NAME"

# Cleanup
rm -rf "$TEMP_DIR"

# Verify package was created
if [ ! -f "$OUTPUT_FILE" ]; then
    echo -e "${RED}✗ Error: Failed to create package${NC}"
    exit 1
fi

# Get package size
PACKAGE_SIZE=$(du -h "$OUTPUT_FILE" | cut -f1)

echo -e "${GREEN}✓ Package created successfully${NC}"
echo ""

# Display package information
echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                   Package Information                      ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "  ${YELLOW}Skill Name:${NC}      $SKILL_NAME"
echo -e "  ${YELLOW}Output File:${NC}     $OUTPUT_FILE"
echo -e "  ${YELLOW}Package Size:${NC}    $PACKAGE_SIZE"
echo -e "  ${YELLOW}Files Included:${NC}  $FILE_COUNT"
echo ""

# Show what was excluded
echo -e "${YELLOW}Excluded from package:${NC}"
echo "  • .git directory"
echo "  • .DS_Store files"
echo "  • *.skill files"
echo "  • node_modules/"
echo "  • tests/"
echo "  • plans/"
echo "  • .skillrc metadata file"
echo ""

# Display usage instructions
echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                   Usage Instructions                       ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}To use this skill:${NC}"
echo ""
echo -e "  ${YELLOW}In Claude Chat (web):${NC}"
echo "    1. Upload the .skill file"
echo "    2. Reference in conversation: \"Load the $SKILL_NAME skill\""
echo ""
echo -e "  ${YELLOW}In Claude Code:${NC}"
echo "    1. Place .skill file in your project directory"
echo "    2. Use command: /load $SKILL_NAME"
echo ""
echo -e "${GREEN}Package ready:${NC} $OUTPUT_FILE"
echo ""

exit 0
