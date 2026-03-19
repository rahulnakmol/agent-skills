# Prompt Engineering Techniques — Full Reference

## Technique 1: Zero-Shot Prompting

**When to use**: The task is straightforward, well-defined, and doesn't require examples to illustrate the expected output. The user has provided clear enough context that a direct instruction will suffice.

**How it works**: A single, clear instruction with all necessary context embedded directly. No examples needed.

**Best for**: Simple queries, standard document formats, well-understood coding tasks, factual research.

**Prompt pattern**:
```
[Role/Context] + [Clear instruction] + [Constraints] + [Output format]
```

**Example**:
```
You are a senior technical writer. Write a 500-word overview of Kubernetes pod autoscaling for a developer audience. Use clear language, include one concrete example, and end with three best practices. Format as Markdown with H2 headings.
```

---

## Technique 2: Few-Shot Prompting

**When to use**: The desired output has a specific style, format, or pattern that is best communicated through examples. The user has (or can provide) 2-5 examples of what good output looks like.

**How it works**: Provide 2-5 examples of input-output pairs before the actual task, so the model learns the pattern.

**Best for**: Consistent formatting tasks, style-matching, classification, data transformation, any task where "show don't tell" is more efficient.

**If selecting this technique**, ask:
> "To get the best results, I'd like to include a few examples in the prompt. Can you share 2-3 examples of what good output looks like for this task? Or should I generate representative examples based on what you've described?"

**If the user asks you to generate examples**: Create 2-3 representative input-output pairs that match the task's domain, format, and complexity. Make them realistic but clearly illustrative — each example should demonstrate a different aspect of the expected output pattern (e.g., one short input, one complex input, one edge case). Present the generated examples to the user for approval before embedding them in the final prompt.

**Prompt pattern**:
```
[Role/Context]

Example 1:
Input: [sample input]
Output: [sample output]

Example 2:
Input: [sample input]
Output: [sample output]

Example 3:
Input: [sample input]
Output: [sample output]

Now complete this task:
Input: [actual input]
Output:
```

**Example**:
```
You are a changelog writer. Convert commit messages into user-friendly changelog entries.

Example 1:
Input: fix(auth): resolve token refresh race condition in concurrent sessions
Output: Fixed an issue where users could be unexpectedly logged out during heavy usage.

Example 2:
Input: feat(dashboard): add real-time notification bell with unread count badge
Output: Added a notification bell to the dashboard that shows your unread notification count in real time.

Now convert this:
Input: refactor(api): migrate REST endpoints to use new validation middleware
Output:
```

---

## Technique 3: Meta Prompting

**When to use**: The task is complex, ambiguous, or requires the AI to reason about HOW to approach the problem before executing. The user wants the AI to first plan its approach, then execute.

**How it works**: The prompt instructs the AI to first analyze the task, develop a strategy, and then execute that strategy. Essentially, the AI writes its own sub-prompts.

**Best for**: Complex research, multi-faceted analysis, architectural decisions, tasks where the approach itself is uncertain.

**Prompt pattern**:
```
[Role/Context]

Before executing, first analyze this task and outline your approach:
1. What are the key dimensions to consider?
2. What information do you need to gather or generate?
3. What structure will best serve the audience?
4. What are the potential pitfalls?

Then execute your plan step by step, showing your reasoning.

Task: [Task description]

Quality criteria: [Success measures]
```

**Example**:
```
You are a solutions architect evaluating cloud migration strategies.

Before making recommendations, first:
1. Identify the key decision factors for this specific workload
2. Map the current architecture's dependencies and constraints
3. Evaluate at least 3 migration approaches against these factors
4. Assess risks and mitigation strategies for each

Then present your analysis and recommendation.

Task: The client runs a monolithic Java ERP system on-premises with 500 concurrent users, a 2TB Oracle database, and strict compliance requirements (SOX, GDPR). They want to move to Azure within 18 months.

Quality criteria: Recommendation must address cost, risk, timeline, and compliance. Include a phased migration roadmap.
```

---

## Technique 4: Knowledge Generation Prompting

**When to use**: The task requires the AI to first generate or surface relevant knowledge before using that knowledge to complete the task. Useful when the answer depends on synthesizing multiple pieces of information.

**How it works**: Two-stage prompt — first generate relevant facts, frameworks, or background knowledge, then use that generated knowledge to produce the final output.

**Best for**: Expert analysis, technical deep-dives, comparative studies, tasks requiring domain expertise, informed recommendations.

**Prompt pattern**:
```
[Role/Context]

Stage 1 — Knowledge Generation:
First, generate the key facts, frameworks, and principles relevant to [topic]. Consider:
- [Dimension 1]
- [Dimension 2]
- [Dimension 3]

Stage 2 — Application:
Now, using the knowledge you've generated above, [actual task instruction].

Output format: [Specification]
```

**Example**:
```
You are a cybersecurity consultant.

Stage 1 — Knowledge Generation:
First, generate the key facts and frameworks relevant to zero-trust architecture in healthcare settings. Consider:
- HIPAA and HITECH compliance requirements
- Common threat vectors in healthcare IT
- Zero-trust maturity models (CISA, Forrester, NIST 800-207)
- Network segmentation patterns for medical devices

Stage 2 — Application:
Using this knowledge, write a 3-page executive briefing recommending a zero-trust adoption roadmap for a 500-bed hospital system currently using perimeter-based security. Include a 12-month phased approach with quick wins in the first quarter.

Output format: Executive briefing with sections: Current Risk Landscape, Recommended Approach, Phased Roadmap, Budget Estimates, Quick Wins.
```

---

## Technique 5: Prompt Chaining

**When to use**: The task is too complex for a single prompt. It has distinct phases where the output of one phase feeds into the next. The user wants a multi-step workflow.

**How it works**: Break the task into a sequence of linked prompts, where each prompt's output becomes the input for the next. The final generated prompt will instruct the agent to work through these phases sequentially.

**Best for**: End-to-end workflows, document pipelines (research → outline → draft → review), multi-artifact tasks, complex code features with dependencies.

**Prompt pattern**:
```
This task requires a multi-step approach. Execute each step sequentially, using the output of each step as input for the next.

--- Step 1: [Phase name] ---
[First prompt instruction]
Produce: [Intermediate deliverable description]

--- Step 2: [Phase name] ---
Using the output from Step 1, [second prompt instruction]
Produce: [Intermediate deliverable description]

--- Step 3: [Phase name] ---
Using the output from Step 2, [third prompt instruction]
Produce: [Final deliverable description]

Quality gate: After each step, verify [criteria] before proceeding.
```

**Example**:
```
This task requires a multi-step approach. Execute each step sequentially.

--- Step 1: Research ---
Research the top 5 CRM platforms for mid-market B2B SaaS companies (50-500 employees). For each, identify: pricing model, key features, integration ecosystem, and known limitations. Produce a structured comparison table.

--- Step 2: Analysis ---
Using the comparison from Step 1, analyze which platforms best fit a company with these requirements: HubSpot Marketing Hub integration, Salesforce migration path, under $100/user/month, strong API for custom integrations. Produce a ranked shortlist of 3 with pros/cons.

--- Step 3: Recommendation ---
Using the analysis from Step 2, write a 1-page executive recommendation memo addressed to the VP of Sales. Include the top pick, runner-up, migration considerations, and estimated timeline. Produce the final memo.

Quality gate: After each step, verify completeness before proceeding.
```

---

## Technique Selection Matrix

| Task Complexity | Examples Available? | Multi-Phase? | Recommended Technique |
|----------------|--------------------|--------------|-----------------------|
| Simple, clear | No | No | Zero-Shot |
| Pattern-based | Yes (2-5) | No | Few-Shot |
| Ambiguous, complex | No | No | Meta |
| Knowledge-dependent | No | No | Knowledge Generation |
| Multi-step workflow | N/A | Yes | Prompt Chaining |

## Combining Techniques

Some tasks benefit from combining techniques:
- **Few-Shot + Prompt Chaining**: Complex workflow where each step needs examples
- **Meta + Knowledge Generation**: Analyze approach first, then generate knowledge, then execute
- **Zero-Shot + Prompt Chaining**: Simple steps that must be sequenced

When combining, explain to the user why and how the techniques complement each other.
