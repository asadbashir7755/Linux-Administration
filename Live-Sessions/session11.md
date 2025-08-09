
# 📅 Session 11 — 19 Jul 2025 • Archiving & Compression Completed

233. `vi data/19_july`
      Create/edit a file within data.

234. `ls`
      List.

235. `cat data/19_july`
      View file contents.

236. `tar -rvf archive.tar data/19_july`
      Append file to existing archive.

237. `ls`
      List.

238. `tar -tvf archive.tar`
      List contents of tar file.

239. `vi data/19_july`
      Edit file again.

240. `rm data/ -rf`
      Remove directory with flags after path (works but nonstandard order).
      Note: Safer form is `rm -rf data/`.

241. `tar -uvf archive.tar data/19_july`
      Update entry if the file is newer.

242. `tar -xvf archive.tar`
      Extract archive.

243. `ls data/`
      Check extracted files.

244. `cat data/19_july`
      View updated content.

245. `tar -tvf archive.tar`
      Verify archive entries.

246. `tar --delete -f archive.tar data/19_july`
      Delete specific member from archive.
      Note: Supported with non-compressed tar files.

247. `tar -tvf archive.tar`
      Verify deletion.

248. `ls`
      List.

249. `zip -r data.zip data/`
      Create recursive zip archive.

250. `ls data -lh`
      List contents of data.

251. `du -hs data`
      Size of data directory.

252. `du -hs data.zip`
      Size of zip archive.

253. `ls -lh`
      List with sizes.

254. `rm -rf data`
      Remove data directory.

255. `ls`
      List.

256. `ll`
      Long list.

257. `ls -lh`
      Long list.

258. `unzip data.zip`
      Extract zip archive.

259. `ls`
      List.

260. `du -hs data`
      Check size after unzip.

261. `ls`
      List.

262. `gzip compressed.gz data`
      Incorrect syntax for gzip (expects file(s) to compress).
      Note: To create a .gz with a specific name, use `gzip -c datafile > compressed.gz` or tar+gzip.

263. `gzip archive.tar.gz archive.tar`
      Also incorrect: gzip doesn’t take output then input.
      Note: Correct: `gzip archive.tar` produces `archive.tar.gz`.

264. `gzip archive.tar`
      Correctly compress archive.tar to archive.tar.gz (replaces original).

265. `ls`
      List.

266. `ls -lh`
      Verify sizes.

267. `gzip archive.tar`
      Attempt to gzip again; if already .gz, it won’t find archive.tar.
      Note: Will error if archive.tar no longer exists.

268. `ls`
      List.

269. `gzip archive.tar`
      Repeated attempt; same note as above.

270. `ls`
      List.

271. `ls -lh`
      Long list.

272. `rm -rf data`
      Remove data dir again (if present).

273. `ls`
      List.

274. `ll`
      Long list.

275. `gunzip archive.tar.gz`
      Decompress back to archive.tar.

276. `ls`
      List.

277. `ll`
      Long list.

278. `tar -xvf archive.tar`
      Extract tar again.

279. `ls`
      List.

280. `ll`
      Long list.

281. `du -sh data`
      Human-readable size of data.

282. `ls`
      List.

283. `gzip archive.tar`
      Compress archive again to .gz.

284. `ls -lh`
      Check sizes.

285. `ls`
      List.

286. `tar -cvf archive.tar data`
      Recreate tar from data (overwrites if exists).

287. `ll`
      Long list.

288. `ls -lh`
      Long list.

289. `bzip2 archive.tar`
      Compress tar with bzip2 → archive.tar.bz2.

290. `ls -lh`
      Verify file size.

291. `rm -rf data`
      Remove data.

292. `ll`
      Long list.

293. `ls -lh`
      Long list.

294. `bunzip2 archive.tar.bz2`
      Decompress bzip2 archive to archive.tar.

295. `ls -lh`
      Verify.

296. `tar -xvf archive.tar`
      Extract again.

297. `ls`
      List.

298. `ls data -lh`
      Inspect data.

299. `ls`
      List.

300. `ll`
      Long list.

301. `bzip2 archive.tar`
      Recompress to .bz2.

302. `ls -lh`
      Verify.

303. `tar -czvf compressed.tgz data`
      Create gzip-compressed tar (tgz).

304. `ls -lh`
      Verify.

305. `tar -cjvf compressed.tbz2 data`
      Create bzip2-compressed tar (tbz2).

306. `ls -lh`
      Verify.

307. `rm -rf data`
      Remove data directory.

308. `ls -lh`
      Long list.

309. `tar -xzvf compressed.tgz`
      Extract gzipped tar.

310. `ls`
      List.

311. `ll`
      Long list.

312. `rm -rf data`
      Remove extracted data.

313. `ll`
      Long list.

314. `tar -xjvf compressed.tbz2`
      Extract bzip2 tar.

315. `ls -lh`
      Verify.

316. `du -hs data`
      Size of extracted data.


