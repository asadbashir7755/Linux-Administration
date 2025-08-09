
# 📅 Session 8 — 6 Jul 2025 • Package Management — DNF

148. `# Package Manager`
      Note: Comment line; not executed.

149. `#yum yellow dog updater modified`
      Note: Yum stands for “Yellowdog Updater, Modified.”

150. `#yum yellowdog updater, modified`
      Note: Alternate phrasing; still a comment.

151. `#dnf dandified YUM`
      Note: DNF is “Dandified YUM,” the modern replacement for yum.

152. `dnf search epel-release`
      Search repositories for packages matching epel-release.
      Note: EPEL provides extra packages for Enterprise Linux.

153. `ping google.com`
      Check network connectivity and DNS resolution.
      Note: Use Ctrl+C to stop; requires ICMP allowed.

154. `dnf search epel-release`
      Repeat search to confirm results.

155. `dnf search nload`
      Search for the nload network monitor package.

156. `ls /etc/yum.repos.d/`
      List configured repository files.

157. `ls /etc/yum.repos.d/ -l`
      Long list repo files (permissions, timestamps).

158. `vi /etc/yum.repos.d/centos-addons.repo`
      Edit or view the centos-addons repo file.

159. `vi /etc/yum.repos.d/centos.repo`
      Edit/view the base CentOS repo file.

160. `dnf search nload`
      Re-run search for nload.

161. `dnf search epel-release`
      Re-run search for EPEL.

162. `dnf info epel-release.noarch`
      Detailed metadata for epel-release (version, repo, summary).

163. `dnf list installed`
      List all installed packages.

164. `dnf list installed > total_pkgs`
      Save the installed package list to a file.

165. `ls`
      Verify file saved.

166. `vim total_pkgs`
      View/edit the saved package list.

167. `dnf list installed | wc -l`
      Count installed packages (lines).

168. `dnf list installed | grep words.noarch`
      Check if “words.noarch” is installed.

169. `dnf list installed | grep nload`
      Check if nload is installed.

170. `dnf list installed | grep epel-release`
      Verify if EPEL release package is present.

171. `dnf info epel-release.noarch`
      Show info again to confirm.

172. `dnf install epel-release.noarch`
      Install EPEL repository release package.
      Note: Requires sudo/root.

173. `dnf info epel-release.noarch`
      Confirm installation details.

174. `history`
      Show command history.

175. `pwd`
      Print working directory.

176. `ls yum.repos.d`
      List a relative path (works if current dir is /etc).

177. `ls`
      List current directory.

178. `ls ../../etc/yum.repos.d/`
      List repo dir via relative path.

179. `ls /etc/yum.repos.d/`
      List repo dir with absolute path.

180. `cd /etc/`
      Change directory to /etc.

181. `ls`
      List /etc contents.

182. `ls yum.repos.d/`
      List repo files within /etc.

---

# 📅 Session 9 — 6 Jul 2025 • Package Management — DNF (Part 2)

184. `dnf search nlaod`
      Typo in package name; will likely return no results.
      Note: Correct spelling is “nload.”

185. `dnf search nload`
      Search for the correct package.

186. `dnf info nload`
      Show package details for nload.

187. `dnf install nload`
      Install nload (interactive confirmation).

188. `dnf install nload -y`
      Install nload without prompting.

189. `nload`
      Run the network monitor (TUI).
      Note: Use arrow keys/q to quit.

190. `dnf info nload`
      Verify installed version.

191. `dnf remove nload`
      Remove nload (interactive).

192. `dnf remove nload -y`
      Remove without prompt.

193. `dnf info nload`
      Show info (may indicate not installed).

194. `dnf install nload -y`
      Reinstall nload.

195. `dnf update nload`
      Update nload to latest available version.

196. `dnf update epel-release`
      Update EPEL release package.

197. `dnf info epel-release`
      Show details.

198. `dnf update epel-release`
      Repeat update command.

199. `dnf info epel-release`
      Confirm current version.

200. `dnf update`
      Update all packages to latest versions.
      Note: Consider maintenance windows for system-wide updates.

201. `semanage`
      SELinux management tool (may not be installed).
      Note: Provided by policycoreutils-python-utils or policycoreutils packages.

202. `whereis semanage`
      Locate binaries/man pages related to semanage.

203. `dnf provides semanage`
      Find which package supplies the “semanage” command.

204. `dnf provides nload`
      Identify which package provides nload binary.

205. `dnf provides ls`
      Query provider of “ls” (usually coreutils).

206. `dnf provides vim`
      Determine which package provides vim.

207. `gnf group list`
      Typo “gnf”; this will fail.
      Note: Should be dnf group list.

208. `dnf group list`
      List available and installed package groups.

209. `dnf group install "Server with GUI"`
      Install a group (meta-package) for GUI server environment.
      Note: Large download; ensure disk space.

210. `dnf group list`
      Verify group status.

211. `dnf group install ".NET Development"`
      Install .NET development group (if available).

212. `dnf group install "Security Tools"`
      Install security tools group.

213. `dnf group remove "Security Tools"`
      Remove the previously installed group.

214. `dnf info nload`
      Re-check nload details.

215. `dnf remove -y nload`
      Remove nload silently.

216. `dnf install nload --download-only`
      Download package without installing (variant flag).

217. `dnf install nload --downloadonly`
      Equivalent option (canonical spelling).
      Note: Packages cached under /var/cache/dnf/.

218. `find /var -name nload*`
      Locate cached RPMs.

219. `cp /var/cache/dnf/epel-4b20c555de8aed94/packages/nload-0.7.4-23.el9.x86_64.rpm /home/zubair/`
      Copy downloaded RPM from cache to home.

220. `cd /home/zubair/`
      Go to home directory.

221. `ls`
      Verify copied RPM.

222. `dnf clean packages`
      Clean cached packages.
      Note: Frees space; removes package files from cache.

223. `find /var -name nload*`
      Check cache after cleaning.

224. `find . -name nload*`
      Search current directory for matching files.

225. `find . -name nload`
      Search for exact name.

226. `find . -name nload*`
      Repeat wildcard search.

227. `ls`
      List.

228. `dnf clean packages`
      Clean cache again.

229. `ls`
      List.

230. `vimtutor`
      Launch Vim tutorial (practice).

231. `whereis vimtutor`
      Locate the vimtutor binary/man page.

232. `history`
      Show history.
