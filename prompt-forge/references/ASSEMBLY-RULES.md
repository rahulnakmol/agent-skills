# Prompt Assembly & Delivery — Full Reference

## Assembly Process

Follow these 7 steps to assemble the final prompt from gathered inputs:

### Step 1: Open with Role and Context
Set the persona and domain expertise the AI should adopt. Be specific about the role's experience level and perspective.

```
You are a [specific role] with [experience/expertise]. Your task is to [high-level objective] for [audience].
```

### Step 2: State the Objective Clearly
One clear sentence describing what needs to be produced. Avoid ambiguity.

```
Produce [deliverable type] that [key requirement] and [secondary requirement].
```

### Step 3: Embed the Technique Structure
Apply the selected prompt technique's pattern (see TECHNIQUES.md):
- Zero-Shot: Direct instruction with constraints
- Few-Shot: Examples followed by task
- Meta: Analyze-then-execute instruction
- Knowledge Generation: Two-stage generate-then-apply
- Prompt Chaining: Sequential linked steps

### Step 4: Include All Constraints
Embed every constraint gathered during the dialogue:
- Format requirements (length, structure, sections)
- Audience specifications (technical level, role, familiarity)
- Scope boundaries (what's in, what's out)
- Quality criteria (accuracy, depth, tone)
- Brand or organizational guidelines
- Existing content to incorporate or reference

### Step 5: Add Artifact Instructions (if applicable)
When the output is a DOCX, XLSX, PPTX, or MD file:
- Include the humanize skill invocation with voice profile (see VOICE-PROFILES.md)
- Reference the appropriate document skill
- Specify the order: content first, humanize second, format third

### Step 6: Specify Output Format
Define exactly what the deliverable looks like:
- File type or format
- Section structure or headings
- Length expectations
- Any required elements (table of contents, executive summary, etc.)

### Step 7: Add Verification Criteria
How to know the output is complete and correct:
- Checklist of required elements
- Quality benchmarks
- Audience-appropriateness check

## Output Envelope

Wrap the assembled prompt in this structure when presenting to the user:

```markdown
## Generated Prompt

---

**Prompt Technique**: [Selected technique name]
**Task Category**: [Category from Phase 1]
**Voice Profile**: [Selected profile, or "N/A" for non-artifacts]

---

[The comprehensive prompt text, ready to be used directly]

---

**Usage Notes**:
- [Platform recommendation: Claude Chat, Claude Code, etc.]
- [Suggested model: Opus for complex tasks, Sonnet for standard tasks]
- [If prompt chaining: sequence of execution steps]
- [Any caveats or customization points]
```

## Delivery Checklist

Before presenting the prompt, verify:

- [ ] Prompt is self-contained (runnable without additional context)
- [ ] Success criteria are included (how to know output is correct)
- [ ] Output format is specified (what the deliverable looks like)
- [ ] Correct technique pattern is applied
- [ ] Humanize skill + voice profile included (if artifact)
- [ ] Prompt is specific enough for consistent results
- [ ] No unnecessary padding or filler instructions
- [ ] Constraints from user dialogue are all represented

## Final Interaction

After presenting the prompt, ask:

> "Here's your generated prompt. Would you like me to:
> 1. **Execute it now** — I'll run this prompt immediately and produce the output
> 2. **Refine it** — Tell me what to adjust and I'll regenerate
> 3. **Save it** — I'll save this prompt as a file for later use
>
> What would you prefer?"

Handle each option:
- **Execute**: Take the generated prompt text and execute it directly in the current session as if the user had typed it. If the prompt references skills (humanize, docx, xlsx, pptx), invoke those skills as part of execution. For Prompt Chaining, execute each step sequentially and show intermediate outputs.
- **Refine**: Ask what to change via AskUserQuestion, update the relevant phase inputs, reassemble the prompt, and present the updated version. Repeat until the user is satisfied.
- **Save**: Write the prompt (including the output envelope with technique, category, voice profile, and usage notes) to a `.md` file in the current working directory. Suggest a filename like `prompt-forge-[task-summary].md`.
