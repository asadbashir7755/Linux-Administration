
# 📅 Session 12 — 20 Jul 2025 • Links (Soft & Hard)

233. `# Links`
      Note: Topic header.

234. `# Soft link / Symlink / Symbolic Link`
      Note: Symlinks point to a path, can cross filesystems.

235. `# file/folder`
      Note: Symlinks can target files or directories.

236. `# cross filesystem support`
      Note: Symlinks can span filesystems.

237. `# Inodes different`
      Note: Symlink has its own inode; not the same as target.

238. `# Depends upon source/ source path`
      Note: Symlink validity depends on the target path existing.

239. `df -h`
      Check mounted filesystems and space.

240. `ls /backups/`
      List backups directory.

241. `pwd`
      Show current path.

242. `df -h`
      Repeat filesystem overview.

243. `df -hi`
      Show inode usage (useful for links).

244. `ls`
      List.

245. `ls -i`
      Show inode numbers with listing.

246. `ls`
      List.

247. `ls Downloads/`
      List Downloads directory.

248. `vi Downloads/abc`
      Create/edit a file “abc”.

249. `pwd`
      Print working directory.

250. `ln -s /home/zubair/Downloads/abc /home/zubair/linked_abc`
      Create a symlink named linked\_abc pointing to file abc.

251. `ls -l`
      Show symlink arrow (linked\_abc -> target).

252. `ls`
      List.

253. `cat linked_abc`
      Read via symlink (shows target contents).

254. `vi linked_abc`
      Edit target through symlink.

255. `cat Downloads/abc`
      Confirm contents.

256. `ls -id linked_abc`
      Show inode and indicate it’s a symlink.

257. `ls -i linked_abc`
      Inode of the symlink (different from target).

258. `ls -i`
      List inodes in current dir.

259. `ls -i linked_abc`
      Repeat inode for symlink.

260. `ls -i Downloads/abc`
      Inode of the target file.

261. `cd Downloads/`
      Enter Downloads.

262. `ls`
      List.

263. `mv abc Abc`
      Rename target (case change).

264. `ll`
      Long list.

265. `cd ..`
      Up to home.

266. `ls -l`
      linked\_abc now broken (points to old path/name).
      Note: Symlinks do not auto-update on rename.

267. `cat linked_abc`
      Likely error (No such file) due to broken link.

268. `cd Downloads/`
      Go back in.

269. `ls`
      List.

270. `ls -i`
      Show inodes.

271. `mv Abc abc`
      Rename back to original.

272. `ls -i`
      Inode may remain the same; path restored.

273. `ls ..`
      List parent.

274. `ls -l ..`
      Long list parent; linked\_abc should work again.

275. `cat ../linked_abc`
      Reading via symlink works again.

276. `ls`
      List.

277. `mv ..`
      Invalid usage (mv requires src and dst).
      Note: Likely produced an error.

278. `mv abc ..`
      Move file out to parent directory.

279. `ls`
      List (abc gone from Downloads).

280. `cd ..`
      Up to home.

281. `ls`
      List (abc now here).

282. `ll`
      Long list.

283. `mv abc Downloads/`
      Move file back to Downloads.

284. `ll`
      Verify.

285. `ls`
      List.

286. `unlink linked_abc`
      Remove the symlink only (target untouched).

287. `ll`
      Verify symlink removal.

288. `ls Downloads/`
      Target file remains.

289. `ln -s /home/zubair/Downloads/abc /home/zubair/linked_abc`
      Recreate symlink.

290. `ll`
      Verify symlink.

291. `ls -i /home/zubair/Downloads/abc`
      Inode of target.

292. `rm /home/zubair/Downloads/abc`
      Remove target file.

293. `ll`
      Symlink now broken.

294. `touch /home/zubair/Downloads/abc`
      Recreate a new empty target file.

295. `ll`
      Symlink now points to a (new) file (same path).

296. `ls -i /home/zubair/Downloads/abc`
      Inode changed (new file).

297. `ls`
      List.

298. `ll`
      Verify.

299. `file linked_abc`
      Identify type (symbolic link).

300. `file /dev/null`
      Identify device file.

301. `file /dev/sda1`
      Identify block device.

302. `file Downloads/`
      Identify directory.

303. `ls`
      List.

304. `file 28_jun_2025`
      Identify type of that path (may not exist).

305. `stat linked_abc`
      Detailed metadata for symlink (and target).

306. `stat /home/zubair/Downloads/abc`
      Detailed metadata for target file.

307. `ls`
      List.

308. `stat file_21`
      Show stats (file may or may not exist).

309. `cd archiving_compression/`
      Enter earlier working dir.

310. `stat archive.tar.gz`
      Stats for compressed tar.

311. `df -h`
      Filesystem usage overview.

312. `vi /backups/shared_file`
      Edit shared\_file in /backups (create if needed).

313. `ln -s /backups/shared_file /home/zubair/imp_file`
      Create symlink imp\_file to shared\_file.

314. `cd ..`
      Up to home.

315. `ll`
      List and verify symlink.

316. `cat imp_file`
      Read through symlink.

317. `ls`
      List.

318. `ln -s /home/zubair/archiving_compression /home/zubair/Archiving_compression`
      Symlink to a directory (capitalization differs).

319. `ll`
      Verify directory symlink.

320. `cat imp_file`
      Read via symlink again.

321. `# HardLink`
      Note: Start of hard link section.

322. `# Within filesystem`
      Note: Hard links require same filesystem.

323. `# Does not depend upon source/ both copies are orignal`
      Note: Hard links are peer names to same inode.

324. `# hardlink is for files only`
      Note: Cannot hard link directories (typically prohibited).

325. `# both linked files have same inode number`
      Note: Key property of hard links.

326. `ls`
      List.

327. `ln /backups/shared_file /home/zubair/hard_link`
      Create hard link to shared\_file (must be same filesystem).

328. `ls`
      List.

329. `ls Downloads/`
      List.

330. `ln /home/zubair/Downloads/abc /home/zubair/hard_link`
      Overwrite attempt; if hard\_link exists, this fails unless -f and same FS.

331. `ls -l`
      Review links.

332. `cat Downloads/abc`
      Read target.

333. `vi Downloads/abc`
      Edit file (changes visible via all hard links).

334. `cat hard_link`
      Read via hard link (should match).

335. `ll`
      Long list.

336. `ls -i hard_link`
      Inode number for hard\_link.

337. `ls -i Downloads/abc`
      Inode number should match hard\_link.

338. `stat hard_link`
      Stats for the hard link.

339. `stat Downloads/abc`
      Stats for the original name (same inode).

340. `ln /home/zubair/Downloads/abc /home/zubair/hard_link`
      Another attempt to link to existing name; likely error unless removed first.

341. `rm /home/zubair/Downloads/abc`
      Remove one name; data persists via hard\_link.

342. `cat hard_link`
      Contents still accessible (inode still referenced).

343. `ln /home/zubair/hard_link /home/zubair/Downloads/abc`
      Recreate another hard link back in Downloads.

344. `ls -i /home/zubair/Downloads/abc`
      Verify inode.

345. `cat /home/zubair/Downloads/abc`
      Contents present.

346. `find / -samefile hard_link`
      Find all hard links to the same inode (system-wide; slow; requires perms).

347. `find /home -samefile hard_link`
      Restrict search to /home.

348. `ls -i /home/zubair/Downloads/abc`
      Inode verification.

349. `ls -i /home/zubair/hard_link`
      Inode verification (should match).

350. `ls`
      List.

351. `ln /home/zubair/archiving_compression /home/zubair/arc`
      Attempt hard link to a directory; generally not permitted.
      Note: Expect “Operation not permitted.”

352. `stat hard_link`
      Check link count and metadata.


