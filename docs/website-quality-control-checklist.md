# Website Quality Control Checklist

## 1. Purpose

This checklist is used after all module pages have been created.

The goal is to make sure the site is stable, easy to use, and ready for classroom teaching.

---

## 2. Link Check

For each sidebar item:

- [ ] The page opens successfully.
- [ ] The path matches the real file name.
- [ ] No `.md` is included in the link.
- [ ] Folder names match exactly.
- [ ] Hyphens are correct.
- [ ] No old file names remain in config.

## 3. Folder Check

Each main folder should have:

- [ ] `index.md`
- [ ] all topic `.md` files
- [ ] consistent lowercase file names
- [ ] hyphen-separated names
- [ ] no duplicate old topic files

## 4. Build Check

Run:

```powershell
cd D:\ibdp-cs-sl-website
npm run docs:dev
```

Then check locally:

```text
http://localhost:5173/ibdp-cs-sl-website/
```

Run:

```powershell
npm run docs:build
```

If build succeeds, commit and push:

```powershell
git add .
git commit -m "Upgrade homepage and roadmap"
git push
```

## 5. Content Consistency Check

For each teaching page:

- [ ] Lesson goals are clear.
- [ ] Key terms table exists.
- [ ] Chinese and English explanation exists.
- [ ] Example exists.
- [ ] Code or technical process exists where suitable.
- [ ] Step-by-step trace/process exists.
- [ ] Common mistakes table exists.
- [ ] Guided practice exists.
- [ ] Independent practice exists.
- [ ] Exam-style question exists.
- [ ] Homework exists.
- [ ] One-page summary exists.

## 6. Teaching Readiness Check

Before using the site in class:

- [ ] Teacher has tested the page.
- [ ] Examples match lesson objective.
- [ ] Code examples run or are logically correct.
- [ ] Questions have hidden answers.
- [ ] No page is too empty.
- [ ] No unsafe cybersecurity activity is included.
- [ ] Exam-style answers use technical keywords.

## 7. Future Improvement Ideas

- Add more past-paper style questions.
- Add printable one-page revision sheets.
- Add more Java tracing tasks.
- Add bilingual vocabulary flashcards.
- Add diagrams as static images if needed.
- Add internal links between related topics.
- Add end-of-unit mini tests.
