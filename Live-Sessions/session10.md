
# 📅 Session 10 — 12 Jul 2025 • Session 1: RPM | Session 2: Archiving (Tar)

235. `# Redhat Package Manager RPM`
      Note: Comment; RPM is the low-level package manager.

236. `rpm -qa`
      Query all installed RPM packages.

237. `rpm -qa | wc -l`
      Count installed packages.

238. `rpm -qa | grep nload`
      Check if nload is installed via RPM.

239. `rpm -qa | wc -l`
      Repeat count.

240. `rpm -qa`
      Repeat list.

241. `rpm -qa | grep words-3.0-39.el9.noarch`
      Search for a specific version of “words.”

242. `rpm -qa | grep words*`
      Glob in grep pattern; equivalent to grep 'words\*' (note: regex vs shell glob).

243. `rpm -qa | grep words`
      Match any “words” package.

244. `rpm -qi words-3.0-39.el9.noarch`
      Detailed info for the specific words package.

245. `rpm -qi words`
      Query info by name (if uniquely resolves).

246. `rpm -qi nload`
      Package info for nload.

247. `ls`
      List directory.

248. `rpm -ivh nload-0.7.4-23.el9.x86_64.rpm`
      Install RPM from local file (i=install, v=verbose, h=hash).
      Note: Use full and correct filename.

249. `rpm -qi nload`
      Verify installation.

250. `ls`
      List.

251. `rpm -Uvh nload-0.7.4-23.el9.x86_64.rpm`
      Upgrade or install if newer (U=upgrade).

252. `rpm -evh nload-0.7.4-23.el9.x86_64`
      Erase package (e=erase; v/h optional).
      Note: Erase uses package name, not file.

253. `rpm -qi nload`
      Check if removed.

254. `cat /etc/redhat-release`
      Show distribution release version.

255. `uname -a`
      Kernel and system info.

256. `rpm -e epel-release`
      Remove EPEL release package.

257. `rpm -e epel-next-release`
      Remove EPEL next release (if installed).

258. `rpm -evh epel-release`
      Erase with verbose/hash.

259. `rpm -ivh https://dl.fedoraproject.org/pub/epel/9/Everything/x86_64/Packag.../epel-release-9-10.el9.noarch.rpm`
      Install RPM directly from URL.
      Note: Ensure network access and SSL.

260. `ls`
      List.

261. `mkdir archiving_compression`
      Create working directory.

262. `cd archiving_compression/`
      Enter it.

263. `ls`
      List.

264. `cp /etc/passwd .`
      Copy passwd into workspace.

265. `ls`
      List.

266. `vi passwd`
      View/edit file.

267. `ls -lh`
      List with human-readable sizes.

268. `vi passwd`
      Edit again.

269. `ls -lh`
      Verify.

270. `vi passwd`
      Edit again.

271. `ls -lh`
      Verify.

272. `cp passwd my_pass`
      Make a copy.

273. `cp passwd your_pass`
      Make another copy.

274. `ls`
      List.

275. `ll`
      Long list (alias).

276. `ls -l`
      Long list.

277. `ls -lh`
      Long list human-readable.

278. `mkdir data`
      Create data dir.

279. `ls`
      List.

280. `mv my_pass data`
      Move file into data.

281. `mv passwd data`
      Move passwd into data.

282. `mv your_pass data`
      Move the last copy.

283. `ls`
      List.

284. `tree data/`
      Show tree of data (files inside).

285. `ls`
      List.

286. `mkdir data/abc`
      Create subdirectory.

287. `ls`
      List.

288. `tree data/`
      View updated structure.

289. `tar -cvf archive.tar data`
      Create tar archive of data (no compression).

290. `ls`
      List.

291. `ls -lh`
      Check sizes.

292. `du -hs data`
      Disk usage summary for data.

293. `du -hs archive.tar`
      Disk usage for tar file.

294. `ls`
      List.

295. `rm -rf data`
      Remove data dir recursively.

296. `ls`
      List.

297. `tar -xvf archive.tar`
      Extract archive back into data/.

298. `ls`
      List.

299. `ls data/`
      Inspect extracted directory.

300. `ls data/ -lh`
      Long list.

301. `history`
      Show history.

