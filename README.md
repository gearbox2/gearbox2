### Hi there 👋

<!--
**gearbox2/gearbox2** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->

## Desgin philosopies from various OSS documentations (e.g. PmWiki):

1. <b>Favor Writers over Readers</b>
- For a collaborative authoring system of hyperlinked documents, it's hard enough to get people (including PM) to contribute written material; making authors deal with HTML markup and linking issues places more obstacles to active contribution. So, PmWiki aims to make it easier to author documents, even if doing so limits the types of documents being authored. 

2. <b>Don't try to replace HTML</b>
- Understand what your app's purpose, so you don't try to add bells and whistles unnecessarily. This principle also follows from the "favor writers over readers" principle above--every new feature added to PmWiki requires some sort of additional markup to support it. Pretty soon the source document looks pretty ugly and we'd all be better off just writing HTML. 
- Another reason for avoiding arbitrary HTML is that ill-formed HTML can cause pages to stop displaying completely, and arbitrary HTML can be a security risk--more so when pages can be created anonymously.

3. <b>Avoid gratuitous features (or "scope creep/creeping featurism")</b>
- In general PmWiki features are implemented in response to specific needs, rather than because someone identifies something that "might be useful". In any sort of useful system, it's hard to change a poorly designed feature once people have built a lot of structure based on it. (Need an example? Look at MS-DOS or Windows.) 
- One way to avoid poor design is to resist the temptation to implement something until you have a clearer idea of how it will be used.

4. <b>Lower the barrier of entry</b>
- If a feature could become a barrier to active users, don't include it in the base (core) implementation, but instead find ways to let wiki (site) admin include it as a local customization.

5. <b>separation of customization code and the distribution files</b>
- Small footprint with only the core features. Upgrading is usually a simple matter of copying the latest version's files over the files of your existing  installation. 

6. <b>Be easy to install, configure, and maintain</b>
- (One of the biggest reasons for the creation of PmWiki was that other wiki engines at the time required modifications to the distribution files, so admins ended up losing their customizations on every upgrade.)
