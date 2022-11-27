# The Whitepaper Magazine

Voice for freedom of speech.

## How to express your voice?

1. `git clone git@github.com:thewhitepaper/thewhitepaper.github.io.git`

2. Copy `content/2022/1-first.md` to `content/2022/2-filename.md`.

3. Add an `article` into `content/2022/zine.toml`.

```diff
+[[article]]
+slug = "2"
+file = "2-finename.md"
+title = "◾️◾️◾️◾️◾️◾️◾️◾️◾️◾️"
+author = "yourname"
+cover = ""
+pub_date = "2022-11-27"
+publish = true
+featured = true
```

4. Add `author` to root `zine.toml` file.

```diff
[authors]
folyd = { name = "◾️◾️◾️" }
+ yourname = { name = "◾️◾️◾️" }
```

5. Finally, `git commit`, `git push`, and submit your PR.

> **Info**
>
> Only a blank article is acceptable.
