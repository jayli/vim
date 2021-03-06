" Vim syntax file
" Language:	Vim 8.0 script
" Maintainer:	Charles E. Campbell <NdrOchipS@PcampbellAfamily.Mbiz>
" Modified by jayli, 原始文件性能有很大问题，我做了精简，保留最核心的语法识别
" ，不常用的我大部分都删掉了
" Last Change:	July 31, 2018
" Version:	8.0-19
" URL:	http://www.drchip.org/astronaut/vim/index.html#SYNTAX_VIM
" Automatically generated keyword lists: {{{1

" Quit when a syntax file was already loaded {{{2
if exists("b:current_syntax")
  finish
endif
let s:keepcpo= &cpo
set cpo&vim

" vimTodo: contains common special-notices for comments {{{2
" Use the vimCommentGroup cluster to add your own.
syn keyword vimTodo contained	COMBAK	FIXME	TODO	XXX
syn cluster vimCommentGroup	contains=vimTodo,@Spell

" regular vim commands {{{2
syn keyword vimCommand contained  HiLink  cterm term cstart cstop cgui cfont ctermbg ctermfg gtermfg gtermbg cguifg cguibg echohl normal norm a arga[dd] argu[ment] bad[d] bn[ext] breakd[el] bw[ipeout] cadde[xpr] cc cf[ile] changes cla[st] cnf[ile] comp[iler] cq[uit] cw[indow] delep dell diffg[et] dig[raphs] doau ea el[se] endt[ry] f[ile] fina[lly] foldd[oopen] go[to] ha[rdcopy] hid[e] ij[ump] isp[lit] keepa l[ist] lat lcl[ose] lex[pr] lgete[xpr] lla[st] lnf[ile] lol[der] lt[ag] lw[indow] menut[ranslate] mkv[imrc] nb[key] noa nos[wapfile] on[ly] packl[oadall] po[p] pro ps[earch] ptl[ast] pu[t] pydo pyxdo r[ead] redraws[tatus] rew[ind] rubyd[o] sIc sIp san[dbox] sbf[irst] sbr[ewind] sci scs setl[ocal] sgc sgp sie sin sm[agic] sn[ext] sor[t] spellr[epall] srI srl star[tinsert] sts[elect] sv[iew] syncbind tab tabf[ind] tabnew tags ter[minal] tm[enu] to[pleft] tu[nmenu] undol[ist] up[date] vi[sual] vmapc[lear] wa[ll] winp[os] ws[verb] xmapc[lear] xprop
syn keyword vimCommand contained	ab argd[elete] as[cii] bd[elete] bo[tright] breakl[ist] cN[ext] caddf[ile] ccl[ose] cfdo chd[ir] cle[arjumps] co[py] con[tinue] cr[ewind] d[elete] deletel delm[arks] diffo[ff] dir dp earlier elsei[f] endw[hile] files fini[sh] folddoc[losed] gr[ep] helpc[lose] his[tory] il[ist] iuna[bbrev] keepalt la[st] later lcs lf[ile] lgr[ep] lli[st] lo[adview] lop[en] lua m[ove] mes mkvie[w] nbc[lose] noautocmd nu[mber] opt[ions] pc[lose] popu[p] prof[ile] ptN[ext] ptn[ext] pw[d] pyf[ile] pyxfile rec[over] reg[isters] ri[ght] rubyf[ile] sIe sIr sav[eas] sbl[ast] sc scl scscope sf[ind] sge sgr sig sip sm[ap] sno[magic] sp[lit] spellu[ndo] src srn startg[replace] sun[hide] sw[apname] syntime tabN[ext] tabfir[st] tabo[nly] tc[l] tf[irst] tma[p] tp[revious] tunma[p] unh[ide] v vie[w] vne[w] wh[ile] wn[ext] wundo xme xunme
syn keyword vimCommand contained	abc[lear] argdo au bel[owright] bp[revious] bro[wse] cNf[ile] cal[l] cd cfir[st] che[ckpath] clo[se] col[der] conf[irm] cs debug deletep delp diffp[atch] dj[ump] dr[op] ec em[enu] ene[w] filet fir[st] foldo[pen] grepa[dd] helpf[ind] i imapc[lear] j[oin] keepj[umps] lad[dexpr] lb[uffer] lcscope lfdo lgrepa[dd] lmak[e] loadk lp[revious] luado ma[rk] messages mod[e] nbs[tart] noh[lsearch] o[pen] ownsyntax pe[rl] pp[op] profd[el] pta[g] ptp[revious] py3 python3 q[uit] red[o] res[ize] rightb[elow] rundo sIg sN[ext] sbN[ext] sbm[odified] scI scp se[t] sfir[st] sgi sh[ell] sign sir sme snoreme spe[llgood] spellw[rong] sre[wind] srp startr[eplace] sunme sy t tabc[lose] tabl[ast] tabp[revious] tcld[o] th[row] tmapc[lear] tr[ewind] u[ndo] unl ve[rsion] vim[grep] vs[plit] win[size] wp[revious] wv[iminfo] xmenu xunmenu
syn keyword vimCommand contained	abo[veleft] arge[dit] bN[ext] bf[irst] br[ewind] bufdo c[hange] cat[ch] cdo cg[etfile] checkt[ime] cmapc[lear] colo[rscheme] cope[n] cscope debugg[reedy] deletl dep diffpu[t] dl ds[earch] echoe[rr] en[dif] ex filetype fix[del] for gui helpg[rep] ia in ju[mps] keepp[atterns] laddb[uffer] lbo[ttom] ld[o] lfir[st] lh[elpgrep] lmapc[lear] loadkeymap lpf[ile] luafile mak[e] mk[exrc] mz[scheme] new nor ol[dfiles] p[rint] ped[it] pre[serve] promptf[ind] ptf[irst] ptr[ewind] py3do pythonx qa[ll] redi[r] ret[ab] ru[ntime] rv[iminfo] sIl sa[rgument] sb[uffer] sbn[ext] sce scr[iptnames] setf[iletype] sg sgl si sil[ent] sl[eep] smenu snoremenu spelld[ump] spr[evious] srg st[op] stj[ump] sunmenu syn tN[ext] tabd[o] tabm[ove] tabr[ewind] tclf[ile] tj[ump] tn[ext] try una[bbreviate] unlo[ckvar] verb[ose] vimgrepa[dd] wN[ext] winc[md] wq x[it] xnoreme xwininfo
syn keyword vimCommand contained	al[l] argg[lobal] b[uffer] bl[ast] brea[k] buffers cabc[lear] cb[uffer] ce[nter] cgetb[uffer] chi[story] cn[ext] com cp[revious] cstag delc[ommand] deletp di[splay] diffs[plit] dli[st] dsp[lit] echom[sg] endf[unction] exi[t] filt[er] fo[ld] fu[nction] gvim helpt[ags] iabc[lear] intro k lN[ext] laddf[ile] lc[d] le[ft] lg[etfile] lhi[story] lne[xt] loc[kmarks] lr[ewind] lv[imgrep] marks mks[ession] mzf[ile] nmapc[lear] nore omapc[lear] pa[ckadd] perld[o] prev[ious] promptr[epl] ptj[ump] pts[elect] py[thon] pyx quita[ll] redr[aw] retu[rn] rub[y] sI sIn sal[l] sba[ll] sbp[revious] scg scripte[ncoding] setg[lobal] sgI sgn sic sim[alt] sla[st] smile so[urce] spelli[nfo] sr sri sta[g] stopi[nsert] sus[pend] sync ta[g] tabe[dit] tabn[ext] tabs te[aroff] tl[ast] tno[remap] ts[elect] undoj[oin] uns[ilent] vert[ical] viu[sage] w[rite] windo wqa[ll] xa[ll] xnoremenu y[ank]
syn keyword vimCommand contained	ar[gs] argl[ocal] ba[ll] bm[odified] breaka[dd] bun[load] cad[dbuffer] cbo[ttom] cex[pr] cgete[xpr] cl[ist] cnew[er] comc[lear] cpf[ile] cuna[bbrev] delel delf[unction] dif[fupdate] difft[his] do e[dit] echon endfo[r] exu[sage] fin[d] foldc[lose] g h[elp] hi if is[earch] kee[pmarks] lNf[ile] lan[guage] lch[dir] lefta[bove] lgetb[uffer] ll lnew[er] lockv[ar] ls lvimgrepa[dd] mat[ch] mksp[ell] n[ext]
syn match   vimCommand contained	"\<z[-+^.=]\=\>"
syn keyword vimStdPlugin contained	Arguments Break Clear Continue DiffOrig Evaluate Finish Gdb Man N[ext] Over P[rint] Program Run S Source Step Stop Termdebug TermdebugCommand TOhtml Winbar XMLent XMLns

" vimOptions are caught only when contained in a vimSet {{{2
syn keyword vimOption contained	acd ambw arshape background ballooneval bex bl brk buftype cf cinkeys cmdwinheight com conceallevel crb cscopeverbose cuc def diffexpr ea ei ep eventignore fdi fenc fileformat fkmap foldexpr foldopen fsync gfw guicursor guitabtooltip hidden hlg imactivatefunc imi inc inex isident keymap langnoremap linespace loadplugins ma matchtime mef ml modeline mousefocus mousetime mzschemegcdll odev osfiletype patchexpr pexpr pmbfn printencoding prompt pythondll quoteescape remap rightleftcmd rtp sb scroll sections sh shellslash shm showmode siso smc spc spl ss statusline suffixesadd sws tabline tagrelative tbis termencoding textmode timeout tm ts ttybuiltin twk ul ur ve vif vts wd wic wildmode winheight wm wrapscan
syn keyword vimOption contained	ai anti autochdir backspace balloonevalterm bexpr bo browsedir casemap cfu cino cmp comments confirm cryptmethod cspc cul define diffopt ead ek equalalways ex fdl fencs fileformats flp foldignore foldtext ft ghr guifont helpfile highlight hls imactivatekey iminsert include inf isk keymodel langremap lisp lpl macatsui maxcombine menc mls modelines mousehide mp nf oft pa patchmode pfn popt printexpr pt pythonhome rdt renderoptions rl ru sbo scrollbind secure shcf shelltemp shortmess showtabline sj smd spell splitbelow ssl stl sw sxe tabpagemax tags tbs termguicolors textwidth timeoutlen to tsl ttyfast tws undodir ut verbose viminfo wa weirdinvert wig wildoptions winminheight wmh write
syn keyword vimOption contained	akm antialias autoindent backup balloonexpr bg bomb bs cb ch cinoptions cms commentstring copyindent cscopepathcomp csprg cursorbind delcombine digraph eadirection emo equalprg expandtab fdls fex fileignorecase fml foldlevel formatexpr gcr go guifontset helpheight history hlsearch imaf ims includeexpr infercase iskeyword keywordprg laststatus lispwords lrm magic maxfuncdepth menuitems mm modifiable mousem mps nrformats ofu packpath path ph pp printfont pumheight pythonthreedll re report rlc rubydll sbr scrolljump sel shell shelltype shortname shq slm sn spellcapcheck splitright ssop stmp swapfile sxq tabstop tagstack tc termwinkey tf title toolbar tsr ttym twsl undofile varsofttabstop verbosefile viminfofile wak wfh wildchar wim winminwidth wmnu writeany
syn keyword vimOption contained	al ar autoread backupcopy bdir bh breakat bsdir cc charconvert cinw co compatible cot cscopeprg csqf cursorcolumn dex dip eb emoji errorbells exrc fdm ff filetype fmr foldlevelstart formatlistpat gd gp guifontwide helplang hk ic imak imsearch incsearch insertmode isp km lazyredraw list ls makeef maxmapdepth mfd mmd modified mousemodel msm nu omnifunc para pdev pheader preserveindent printheader pumwidth pythonthreehome readonly restorescreen rnu ruf sc scrolloff selection shellcmdflag shellxescape showbreak si sm so spellfile spr st sts swapsync syn tag tal tcldll termwinscroll tgc titlelen toolbariconsize ttimeout ttymouse tx undolevels vartabstop vfile virtualedit warn wfw wildcharm winaltkeys winptydll wmw writebackup
syn keyword vimOption contained	aleph arab autowrite backupdir bdlay bin breakindent bsk ccv ci cinwords cocu complete cp cscopequickfix csre cursorline dg dir ed enc errorfile fcl fdn ffs fillchars fo foldmarker formatoptions gdefault grepformat guiheadroom hf hkmap icon imc imsf inde is isprint kmp lbr listchars lsp makeencoding maxmem mh mmp more mouses mzq number opendevice paragraphs penc pi previewheight printmbcharset pvh pyx redrawtime revins ro ruler scb scrollopt selectmode shellpipe shellxquote showcmd sidescroll smartcase softtabstop spelllang sps sta su swb synmaxcol tagbsearch tb tenc termwinsize tgst titleold top ttimeoutlen ttyscroll uc undoreload vb vi visualbell wb wh wildignore window winwidth wop writedelay
syn keyword vimOption contained	allowrevins arabic autowriteall backupext belloff binary breakindentopt bt cd cin clipboard cole completefunc cpo cscoperelative cst cwh dict directory edcompatible encoding errorformat fcs fdo fic fixendofline foldclose foldmethod formatprg gfm grepprg guioptions hh hkmapp iconstring imcmdline imst indentexpr isf joinspaces kp lcs lm luadll makeprg maxmempattern mis mmt mouse mouseshape mzquantum numberwidth operatorfunc paste perldll pm previewwindow printmbfont pvw pyxversion regexpengine ri rop rulerformat scl scs sessionoptions shellquote shiftround showfulltag sidescrolloff smartindent sol spellsuggest sr stal sua swf syntax tagcase tbi term terse thesaurus titlestring tpm ttm ttytype udf updatecount vbs viewdir vop wc whichwrap wildignorecase winfixheight wiv wrap ws
syn keyword vimOption contained	altkeymap arabicshape aw backupskip beval bk bri bufhidden cdpath cindent cm colorcolumn completeopt cpoptions cscopetag csto debug dictionary display ef endofline esckeys fdc fdt fileencoding fixeol foldcolumn foldminlines fp gfn gtl guipty hi hkp ignorecase imd imstatusfunc indentkeys isfname js langmap linebreak lmap lw mat maxmemtot mkspellmem mod mousef mouset mzschemedll nuw opfunc pastetoggle pex pmbcs printdevice printoptions pw qe relativenumber rightleft rs runtimepath scr sect sft shellredir shiftwidth showmatch signcolumn smarttab sp spf srr startofline suffixes switchbuf ta taglength tbidi termbidi textauto tildeop tl tr tty tw udir updatetime vdir viewoptions vsts wcm wi wildmenu winfixwidth wiw wrapmargin ww
syn keyword vimOption contained	ambiwidth ari awa balloondelay bevalterm bkc briopt buflisted cedit cink cmdheight columns concealcursor cpt cscopetagorder csverb deco diff dy efm eol et fde fen fileencodings fk foldenable foldnestmax fs gfs gtt guitablabel hid hl im imdisable imstyle indk isi key langmenu lines lnr lz matchpairs mco

" vimOptions: These are the turn-off setting variants {{{2
syn keyword vimOption contained	noacd noallowrevins noantialias noarabic noarshape noautoread noaw noballooneval nobevalterm nobk nobreakindent nocf nocindent nocopyindent nocscoperelative nocsre nocuc nocursorcolumn nodelcombine nodigraph noed noemo noeol noesckeys noexpandtab nofic nofixeol nofoldenable nogd nohid nohkmap nohls noicon noimc noimdisable noinfercase nojoinspaces nolangremap nolinebreak nolist noloadplugins nolrm noma nomagic noml nomodeline nomodified nomousef nomousehide nonumber noopendevice nopi nopreviewwindow nopvw norelativenumber norestorescreen nori norl noro noru nosb noscb noscs nosft noshelltemp noshortname noshowfulltag noshowmode nosm nosmartindent nosmd nosol nosplitbelow nospr nossl nostartofline noswapfile nota notagrelative notbi notbs noterse notextmode notgst notimeout noto notr nottybuiltin notx noundofile novisualbell nowarn noweirdinvert nowfw nowildignorecase nowinfixheight nowiv nowrap nowrite nowritebackup
syn keyword vimOption contained	noai noaltkeymap noar noarabicshape noautochdir noautowrite noawa noballoonevalterm nobin nobl nobri noci nocompatible nocp nocscopetag nocst nocul nocursorline nodg noea noedcompatible noemoji noequalalways noet noexrc nofileignorecase nofk nofs nogdefault nohidden nohkmapp nohlsearch noignorecase noimcmdline noincsearch noinsertmode nojs nolazyredraw nolisp nolnr nolpl nolz nomacatsui nomh nomod nomodifiable nomore nomousefocus nonu noodev nopaste nopreserveindent noprompt noreadonly noremap norevins norightleft nornu nors noruler nosc noscrollbind nosecure noshellslash noshiftround noshowcmd noshowmatch nosi nosmartcase nosmarttab nosn nospell nosplitright nosr nosta nostmp noswf notagbsearch notagstack notbidi notermbidi notextauto notf notildeop notitle notop nottimeout nottyfast noudf novb nowa nowb nowfh nowic nowildmenu nowinfixwidth nowmnu nowrapscan nowriteany nows
syn keyword vimOption contained	noakm noanti noarab noari noautoindent noautowriteall nobackup nobeval nobinary nobomb nobuflisted nocin noconfirm nocrb nocscopeverbose nocsverb nocursorbind nodeco nodiff noeb noek noendofline noerrorbells noex nofen nofixendofline nofkmap nofsync noguipty nohk nohkp noic noim noimd noinf nois nolangnoremap nolbr

" vimOptions: These are the invertible variants {{{2
syn keyword vimOption contained	invacd invallowrevins invantialias invarabic invarshape invautoread invaw invballooneval invbevalterm invbk invbreakindent invcf invcindent invcopyindent invcscoperelative invcsre invcuc invcursorcolumn invdelcombine invdigraph inved invemo inveol invesckeys invexpandtab invfic invfixeol invfoldenable invgd invhid invhkmap invhls invicon invimc invimdisable invinfercase invjoinspaces invlangremap invlinebreak invlist invloadplugins invlrm invma invmagic invml invmodeline invmodified invmousef invmousehide invnumber invopendevice invpi invpreviewwindow invpvw invrelativenumber invrestorescreen invri invrl invro invru invsb invscb invscs invsft invshelltemp invshortname invshowfulltag invshowmode invsm invsmartindent invsmd invsol invsplitbelow invspr invssl invstartofline invswapfile invta invtagrelative invtbi invtbs invterse invtextmode invtgst invtimeout invto invtr invttybuiltin invtx invundofile invvisualbell invwarn invweirdinvert invwfw invwildignorecase invwinfixheight invwiv invwrap invwrite invwritebackup
syn keyword vimOption contained	invai invaltkeymap invar invarabicshape invautochdir invautowrite invawa invballoonevalterm invbin invbl invbri invci invcompatible invcp invcscopetag invcst invcul invcursorline invdg invea invedcompatible invemoji invequalalways invet invexrc invfileignorecase invfk invfs invgdefault invhidden invhkmapp invhlsearch invignorecase invimcmdline invincsearch invinsertmode invjs invlazyredraw invlisp invlnr invlpl invlz invmacatsui invmh invmod invmodifiable invmore invmousefocus invnu invodev invpaste invpreserveindent invprompt invreadonly invremap invrevins invrightleft invrnu invrs invruler invsc invscrollbind invsecure invshellslash invshiftround invshowcmd invshowmatch invsi invsmartcase invsmarttab invsn invspell invsplitright invsr invsta invstmp invswf invtagbsearch invtagstack invtbidi invtermbidi invtextauto invtf invtildeop invtitle invtop invttimeout invttyfast invudf invvb invwa invwb invwfh invwic invwildmenu invwinfixwidth invwmnu invwrapscan invwriteany invws
syn keyword vimOption contained	invakm invanti invarab invari invautoindent invautowriteall invbackup invbeval invbinary invbomb invbuflisted invcin invconfirm invcrb invcscopeverbose invcsverb invcursorbind invdeco invdiff inveb invek invendofline inverrorbells invex invfen invfixendofline invfkmap invfsync invguipty invhk invhkp invic invim invimd invinf invis invlangnoremap invlbr

" termcap codes (which can also be set) {{{2
syn keyword vimOption contained	t_8b t_AB t_al t_bc t_BE t_ce t_cl t_Co t_Cs t_CV t_db t_DL t_EI t_F2 t_F4 t_F6 t_F8 t_fs t_IE t_k1 t_k2 t_K3 t_K4 t_K5 t_K6 t_K7 t_k8 t_K8 t_k9 t_K9 t_KA t_kb t_kB t_KB t_KC t_kd t_kD t_KD t_ke t_KE t_KF t_KG t_kh t_KH t_kI t_KI t_KJ t_KK t_kl t_KL t_kN t_kP t_kr t_ks t_ku t_le t_mb t_md t_me t_mr t_ms t_nd t_op t_PE t_PS t_RB t_RC t_RF t_RI t_RS t_RV t_Sb t_SC t_se t_Sf t_SH t_SI t_so t_sr t_SR t_te t_Te t_ti t_ts t_Ts t_u7 t_ue t_us t_ut t_vb t_ve t_vi t_vs t_VS t_WP t_WS t_xn t_xs t_ZH t_ZR
syn keyword vimOption contained	t_8f t_AF t_AL t_BD t_cd t_Ce t_cm t_cs t_CS t_da t_dl t_EC t_F1 t_F3 t_F5 t_F7 t_F9 t_GP t_IS t_K1 t_k3 t_k4 t_k5 t_k6 t_k7

" unsupported settings: some were supported by vi but don't do anything in vim {{{2
" others have been dropped along with msdos support
syn keyword vimErrSetting contained	bioskey biosk conskey consk autoprint beautify flash graphic hardtabs mesg novice open op optimize redraw slow slowopen sourceany w300 w1200 w9600 hardtabs ht nobioskey nobiosk noconskey noconsk noautoprint nobeautify noflash nographic nohardtabs nomesg nonovice noopen noop nooptimize noredraw noslow noslowopen nosourceany now300 now1200 now9600 w1200 w300 w9600

" AutoCmd Events {{{2
syn case ignore
syn keyword vimAutoEvent contained	BufAdd BufCreate BufDelete BufEnter BufFilePost BufFilePre BufHidden BufLeave BufNew BufNewFile BufRead BufReadCmd BufReadPost BufReadPre BufUnload BufWinEnter BufWinLeave BufWipeout BufWrite BufWriteCmd BufWritePost BufWritePre CmdlineChanged CmdlineEnter CmdlineLeave CmdUndefined CmdwinEnter CmdwinLeave ColorScheme ColorSchemePre CompleteDone CursorHold CursorHoldI CursorMoved CursorMovedI DirChanged EncodingChanged ExitPre FileAppendCmd FileAppendPost FileAppendPre FileChangedRO FileChangedShell FileChangedShellPost FileEncoding FileReadCmd FileReadPost FileReadPre FileType FileWriteCmd FileWritePost FileWritePre FilterReadPost FilterReadPre FilterWritePost FilterWritePre FocusGained FocusLost FuncUndefined GUIEnter GUIFailed InsertChange InsertCharPre InsertEnter InsertLeave MenuPopup OptionSet QuickFixCmdPost QuickFixCmdPre QuitPre RemoteReply SessionLoadPost ShellCmdPost ShellFilterPost SourceCmd SourcePre SpellFileMissing StdinReadPost StdinReadPre SwapExists Syntax TabClosed TabEnter TabLeave TabNew TermChanged TerminalOpen TermResponse TextChanged TextChangedI TextChangedP TextYankPost User VimEnter VimLeave VimLeavePre VimResized WinEnter WinLeave WinNew

" Highlight commonly used Groupnames {{{2
syn keyword vimGroup contained	Comment Constant String Character Number Boolean Float Identifier Function Statement Conditional Repeat Label Operator Keyword Exception PreProc Include Define Macro PreCondit Type StorageClass Structure Typedef Special SpecialChar Tag Delimiter SpecialComment Debug Underlined Ignore Error Todo

" Default highlighting groups {{{2
syn keyword vimHLGroup contained	ColorColumn Cursor CursorColumn CursorIM CursorLine CursorLineNr DiffAdd DiffChange DiffDelete DiffText Directory EndOfBuffer ErrorMsg FoldColumn Folded IncSearch LineNr MatchParen Menu ModeMsg MoreMsg NonText Normal Pmenu PmenuSbar PmenuSel PmenuThumb Question QuickFixLine Scrollbar Search SignColumn SpecialKey SpellBad SpellCap SpellLocal SpellRare StatusLine StatusLineNC StatusLineTerm TabLine TabLineFill TabLineSel Terminal Title Tooltip VertSplit Visual VisualNOS WarningMsg WildMenu
syn match vimHLGroup contained	"Conceal"
syn case match

" Function Names {{{2
syn keyword vimFuncName contained	abs append arglistid assert_equal assert_false assert_notmatch atan2 browsedir bufname byte2line ceil ch_close ch_getbufnr ch_logfile ch_sendexpr cindent complete_add cos cursor deletebufline empty executable exp filereadable findfile fnameescape foldlevel funcref getbufinfo getchar getcmdpos getcurpos getfsize getline getpos gettabinfo getwinpos glob has_key histdel hlID index inputrestore invert items job_start js_decode keys line log maparg matchaddpos matchlist min nextnonblank perleval prompt_addtext pumvisible range reltime remote_foreground remote_startserver resolve screenchar searchdecl server2client setcharsearch setloclist setreg sha256 sin spellbadword str2float strdisplaywidth string strtrans synconcealed synstack tabpagenr tan term_dumpload term_getattr term_getscrolled term_gettty term_setansicolors term_start test_feedinput test_null_dict test_null_string timer_pause tolower trunc undotree virtcol winbufnr win_getid win_id2tabwin winnr winsaveview wordcount
syn keyword vimFuncName contained	acos appendbufline argv assert_equalfile assert_inrange assert_report balloon_show bufexists bufnr byteidx changenr ch_close_in ch_getjob ch_open ch_sendraw clearmatches complete_check cosh debugbreak did_filetype escape execute expand filewritable float2nr fnamemodify foldtext function getbufline getcharmod getcmdtype getcwd getftime getloclist getqflist gettabvar getwinposx glob2regpat haslocaldir histget hostname input inputsave isdirectory job_getchannel job_status js_encode len line2byte log10 mapcheck matcharg matchstr mkdir nr2char pow prompt_setcallback py3eval readfile reltimefloat remote_peek remove reverse screencol searchpair serverlist setcmdpos setmatches settabvar shellescape sinh spellsuggest str2nr strftime strlen strwidth synID system tabpagewinnr tanh term_dumpwrite term_getcursor term_getsize term_list term_setkill term_wait test_garbagecollect_now test_null_job test_override timer_start toupper type uniq visualmode wincol win_gotoid win_id2win winrestcmd win_screenpos writefile
syn keyword vimFuncName contained	add argc asin assert_exception assert_match assert_true balloon_split buflisted bufwinid byteidxcomp char2nr ch_evalexpr ch_info ch_read ch_setoptions col confirm count deepcopy diff_filler eval exepath extend filter floor foldclosed foldtextresult garbagecollect getbufvar getcharsearch getcmdwintype getfontname getftype getmatches getreg gettabwinvar getwinposy globpath hasmapto histnr iconv inputdialog inputsecret islocked job_info job_stop json_decode libcall lispindent luaeval match matchdelete matchstrpos mode or prevnonblank prompt_setinterrupt pyeval reg_executing reltimestr remote_read rename round screenrow searchpairpos setbufline setfperm setpos settabwinvar shiftwidth sort split strcharpart strgetchar strpart submatch synIDattr systemlist tagfiles tempname term_getaltscreen term_getjob term_getstatus term_scrape term_setrestore test_alloc_fail test_ignore_error test_null_list test_settime timer_stop tr undofile values wildmenumode win_findbuf winheight winline winrestview winwidth xor
syn keyword vimFuncName contained	and argidx assert_beeps assert_fails assert_notequal atan browse bufloaded bufwinnr call ch_canread ch_evalraw ch_log ch_readraw ch_status complete copy cscope_connection delete diff_hlID eventhandler exists feedkeys finddir fmod foldclosedend foreground get getchangelist getcmdline getcompletion getfperm getjumplist getpid getregtype getwininfo getwinvar has histadd hlexists indent inputlist insert isnan job_setoptions join json_encode libcallnr localtime map matchadd matchend max mzeval pathshorten printf prompt_setprompt pyxeval reg_recording remote_expr remote_send repeat screenattr search searchpos setbufvar setline setqflist setwinvar simplify soundfold sqrt strchars stridx strridx substitute synIDtrans tabpagebuflist taglist term_dumpdiff term_getansicolors term_getline term_gettitle term_sendkeys term_setsize test_autochdir test_null_channel test_null_partial timer_info timer_stopall trim

"--- syntax here and above generated by mkvimvim ---
" Special Vim Highlighting (not automatic) {{{1

" Set up folding commands
" commands not picked up by the generator (due to non-standard format)
syn keyword vimCommand contained	py3

" Numbers {{{2
" =======
syn match vimNumber	"\<\d\+\%(\.\d\+\%([eE][+-]\=\d\+\)\=\)\=" skipwhite nextgroup=vimGlobal,vimSubst,vimCommand,vimComment
syn match vimNumber	"-\d\+\%(\.\d\+\%([eE][+-]\=\d\+\)\=\)\="  skipwhite nextgroup=vimGlobal,vimSubst,vimCommand,vimComment
syn match vimNumber	"\<0[xX]\x\+"		       skipwhite nextgroup=vimGlobal,vimSubst,vimCommand,vimComment
syn match vimNumber	"\%(^\|\A\)\zs#\x\{6}"             	       skipwhite nextgroup=vimGlobal,vimSubst,vimCommand,vimComment

" All vimCommands are contained by vimIsCommands. {{{2
"syn match vimCmdSep	"[:|]\+"	skipwhite nextgroup=vimAddress,vimAutoCmd,vimEcho,vimIsCommand,vimExtCmd,vimMap,vimMark,vimFilter,vimUserCmd,vimSet,vimLet
syn match vimIsCommand	"\<\a\+\>"	contains=vimCommand
syn keyword vimCommand  contained	in

" Behave! {{{2
" =======
syn match   vimBehave	"\<be\%[have]\>" skipwhite nextgroup=vimBehaveModel,vimBehaveError
syn keyword vimBehaveModel contained	mswin	xterm
if !exists("g:vimsyn_noerror") && !exists("g:vimsyn_nobehaveerror")
 syn match   vimBehaveError contained	"[^ ]\+"
endif

" Filetypes {{{2
" =========
" syn match   vimFiletype	"\<filet\%[ype]\(\s\+\I\i*\)*"	skipwhite contains=vimFTCmd,vimFTOption,vimFTError
if !exists("g:vimsyn_noerror") && !exists("g:vimsyn_vimFTError")
 syn match   vimFTError  contained	"\I\i*"
endif
syn keyword vimFTCmd    contained	filet[ype]
syn keyword vimFTOption contained	detect indent off on plugin

" Operators: {{{2
" =========
syn cluster	vimOperGroup	contains=vimEnvvar,vimFunc,vimFuncVar,vimOper,vimOperParen,vimNumber,vimString,vimRegister,vimContinue
syn match	vimOper	"\%#=1\(==\|!=\|>=\|<=\|=\~\|!\~\|>\|<\|=\)[?#]\{0,2}"	skipwhite nextgroup=vimString,vimSpecFile
syn match	vimOper	"\(\<is\>\|\<isnot\>\)[?#]\{0,2}"		skipwhite nextgroup=vimString,vimSpecFile
syn match	vimOper	"||\|&&\|[-+.]"			skipwhite nextgroup=vimString,vimSpecFile
syn region	vimOperParen 	matchgroup=vimParenSep	start="(" end=")" contains=@vimOperGroup
syn region	vimOperParen	matchgroup=vimSep		start="{" end="}" contains=@vimOperGroup nextgroup=vimVar,vimFuncVar
syn keyword	vimFuncKey   contained	fu[nction]
syn keyword	vimPattern   contained	start	skip	end

syn cluster vimFuncList	contains=vimCommand,Tag
syn cluster vimFuncBodyList	contains=vimIsCommand,vimFunction,vimFunctionError,vimFuncBody,vimSpecFile,vimOper,vimNumber,vimComment,vimString,vimSubst,vimMark,vimRegister,vimAddress,vimFilter,vimCmplxRepeat,vimComment,vimLet,vimSet,vimAutoCmd,vimRegion,vimSynLine,vimNotation,vimCtrlChar,vimFuncVar
syn match   vimFunction	"\<fu\(n\(c\(t\(t\(i\(on\=\)\=\)\=\)\=\)\=\)\=\)\=!\=\s\+\u\w*("me=e-1	contains=@vimFuncList nextgroup=vimFuncBody
syn match   vimFunctionError	"\<fu\(n\(c\(t\(t\(i\(on\=\)\=\)\=\)\=\)\=\)\=\)\=!\=\s\+\U.\{-}("me=e-1	contains=vimCommand   nextgroup=vimFuncBody
syn region  vimFuncBody contained	start=")"	end="\<endf"	contains=@vimFuncBodyList
syn match   vimFuncVar  contained	"a:\(\I\i*\|\d\+\)"

syn keyword vimPattern  contained	start	skip	end

" Special Filenames, Modifiers, Extension Removal: {{{2
" ===============================================
" syn match	vimSpecFile	"<c\(word\|WORD\)>"	nextgroup=vimSpecFileMod,vimSubst
" syn match	vimSpecFile	"<\([acs]file\|amatch\|abuf\)>"	nextgroup=vimSpecFileMod,vimSubst
" syn match	vimSpecFile	"\s%[ \t:]"ms=s+1,me=e-1	nextgroup=vimSpecFileMod,vimSubst
" syn match	vimSpecFile	"\s%$"ms=s+1	nextgroup=vimSpecFileMod,vimSubst
" syn match	vimSpecFile	"\s%<"ms=s+1,me=e-1	nextgroup=vimSpecFileMod,vimSubst
" syn match	vimSpecFile	"#\d\+\|[#%]<\>"	nextgroup=vimSpecFileMod,vimSubst
" syn match	vimSpecFileMod	"\(:[phtre]\)\+"	contained

" User-Specified Commands: {{{2
" =======================
syn cluster	vimUserCmdList	contains=vimAddress,vimSyntax,vimHighlight,vimAutoCmd,vimCmplxRepeat,vimComment,vimCtrlChar,vimEscapeBrace,vimFilter,vimFunc,vimFuncName,vimFunction,vimFunctionError,vimIsCommand,vimMark,vimNotation,vimNumber,vimOper,vimRegion,vimRegister,vimLet,vimSet,vimSetEqual,vimSetString,vimSpecFile,vimString,vimSubst,vimSubstRep,vimSubstRange,vimSynLine
syn keyword	vimUserCommand	contained	com[mand]
syn match	vimUserCmd	"\<com\%[mand]!\=\>.*$"	contains=vimUserAttrb,vimUserCommand,@vimUserCmdList

" Lower Priority Comments: after some vim commands... {{{2
" =======================
syn match	vimComment	excludenl +\s"[^\-:.%#=*].*$+lc=1	contains=@vimCommentGroup,vimCommentString
syn match	vimComment	+\<endif\s\+".*$+lc=5	contains=@vimCommentGroup,vimCommentString
syn match	vimComment	+\<else\s\+".*$+lc=4	contains=@vimCommentGroup,vimCommentString
syn region	vimCommentString	contained oneline start='\S\s\+"'ms=e	end='"'

" Environment Variables: {{{2
" =====================
syn match	vimEnvvar	"\$\I\i*"
syn match	vimEnvvar	"\${\I\i*}"

" In-String Specials: {{{2
" Try to catch strings, if nothing else matches (therefore it must precede the others!)
"  vimEscapeBrace handles ["]  []"] (ie. "s don't terminate string inside [])
syn region	vimEscapeBrace	oneline   contained transparent start="[^\\]\(\\\\\)*\[\zs\^\=\]\=" skip="\\\\\|\\\]" end="]"me=e-1
" jayli 避免字符串中的正则渲染出错
"syn match	vimPatSepErr	contained	"\\)"
"syn match	vimPatSep	contained	"\\|"
"syn region	vimPatSepZone	oneline   contained   matchgroup=vimPatSepZ start="\\%\=\ze(" skip="\\\\" end="\\)\|[^\]['"]"	contains=@vimStringGroup
"syn region	vimPatRegion	contained transparent matchgroup=vimPatSepR start="\\[z%]\=(" end="\\)"	contains=@vimSubstList oneline
syn match	vimNotPatSep	contained	"\\\\"
syn cluster	vimStringGroup	contains=vimEscapeBrace,vimPatSep,vimNotPatSep,vimPatSepErr,vimPatSepZone,@Spell
syn region	vimString	oneline keepend	start=+[^a-zA-Z>!\\@]"+lc=1 skip=+\\\\\|\\"+ matchgroup=vimStringEnd end=+"+	contains=@vimStringGroup
syn region	vimString	oneline keepend	start=+[^a-zA-Z>!\\@]'+lc=1 end=+'+
syn region	vimString	oneline	start=+=!+lc=1	skip=+\\\\\|\\!+ end=+!+	contains=@vimStringGroup
syn region	vimString	oneline	start="=+"lc=1	skip="\\\\\|\\+" end="+"	contains=@vimStringGroup
syn region	vimString	oneline	start="\s/\s*\A"lc=1 skip="\\\\\|\\+" end="/"	contains=@vimStringGroup
syn match	vimString	contained	+"[^"]*\\$+	skipnl nextgroup=vimStringCont
syn match	vimStringCont	contained	+\(\\\\\|.\)\{-}[^\\]"+

" Substitutions: {{{2
" =============
syn cluster	vimSubstList	contains=vimPatSep,vimPatRegion,vimPatSepErr,vimSubstTwoBS,vimSubstRange,vimNotation
syn cluster	vimSubstRepList	contains=vimSubstSubstr,vimSubstTwoBS,vimNotation
syn cluster	vimSubstList	add=vimCollection
syn match	vimSubst	"\(:\+\s*\|^\s*\||\s*\)\<\%(\<s\%[ubstitute]\>\|\<sm\%[agic]\>\|\<sno\%[magic]\>\)[:#[:alpha:]]\@!" nextgroup=vimSubstPat
syn match	vimSubst	"\%(^\|[^\\]\)\<s\%[ubstitute]\>[:#[:alpha:]]\@!"	nextgroup=vimSubstPat contained
syn match	vimSubst	"/\zs\<s\%[ubstitute]\>\ze/"		nextgroup=vimSubstPat
syn match	vimSubst	"\(:\+\s*\|^\s*\)s\ze#.\{-}#.\{-}#"		nextgroup=vimSubstPat
syn match	vimSubst1       contained	"\<s\%[ubstitute]\>"	nextgroup=vimSubstPat
syn match	vimSubst2       contained	"s\%[ubstitute]\>"	nextgroup=vimSubstPat
syn region	vimSubstPat     contained	matchgroup=vimSubstDelim start="\z([^a-zA-Z( \t[\]&]\)"rs=s+1 skip="\\\\\|\\\z1" end="\z1"re=e-1,me=e-1	 contains=@vimSubstList	nextgroup=vimSubstRep4	oneline
syn region	vimSubstRep4    contained	matchgroup=vimSubstDelim start="\z(.\)" skip="\\\\\|\\\z1" end="\z1" matchgroup=vimNotation end="<[cC][rR]>" contains=@vimSubstRepList	nextgroup=vimSubstFlagErr	oneline
syn region	vimCollection   contained transparent	start="\\\@<!\[" skip="\\\[" end="\]"	contains=vimCollClass
syn match	vimCollClassErr contained	"\[:.\{-\}:\]"
syn match	vimCollClass    contained transparent	"\%#=1\[:\(alnum\|alpha\|blank\|cntrl\|digit\|graph\|lower\|print\|punct\|space\|upper\|xdigit\|return\|tab\|escape\|backspace\):\]"
syn match	vimSubstSubstr  contained	"\\z\=\d"
syn match	vimSubstTwoBS   contained	"\\\\"
syn match	vimSubstFlagErr contained	"[^< \t\r|]\+" contains=vimSubstFlags
syn match	vimSubstFlags   contained	"[&cegiIpr]\+"

" 'String': {{{2
syn match	vimString	"[^(,]'[^']\{-}\zs'"

" Marks, Registers, Addresses, Filters: {{{2

" Complex repeats (:h complex-repeat) {{{2
syn match	vimCmplxRepeat	'[^a-zA-Z_/\\()]q[0-9a-zA-Z"]\>'lc=1
syn match	vimCmplxRepeat	'@[0-9a-z".=@:]\ze\($\|[^a-zA-Z]\>\)'

" Set command and associated set-options (vimOptions) with comment {{{2
syn region	vimSet		matchgroup=vimCommand start="\<\%(setl\%[ocal]\|setg\%[lobal]\|se\%[t]\)\>" skip="\%(\\\\\)*\\." end="$" end="|" matchgroup=vimNotation end="<[cC][rR]>" keepend oneline contains=vimSetEqual,vimOption,vimErrSetting,vimComment,vimSetString,vimSetMod
syn region	vimSetEqual	contained	start="[=:]\|[-+^]=" skip="\\\\\|\\\s" end="[| \t]\|$"me=e-1	contains=vimCtrlChar,vimSetSep,vimNotation,vimEnvvar oneline
syn region	vimSetString	contained	start=+="+hs=s+1	skip=+\\\\\|\\"+  end=+"+		contains=vimCtrlChar
syn match	vimSetSep	contained	"[,:]" skipwhite nextgroup=vimCommand
"syn match	vimSetMod	contained	"&vim\=\|[!&?<]\|all&"

" Let {{{2
" ===
syn match vimVar        contained	"\<\h[a-zA-Z0-9#_]*\>"
syn match vimVar		"\<[bwglstav]:\h[a-zA-Z0-9#_]*\>"
syn keyword	vimLet	let	unl[et]	skipwhite nextgroup=vimVar,vimFuncVar

" Abbreviations {{{2
" =============
syn keyword vimAbb	ab[breviate] ca[bbrev] inorea[bbrev] cnorea[bbrev] norea[bbrev] ia[bbrev] skipwhite nextgroup=vimMapMod,vimMapLhs

" Autocmd {{{2
" =======
syn match	vimAutoEventList	contained	"\(!\s\+\)\=\(\a\+,\)*\a\+"	contains=vimAutoEvent nextgroup=vimAutoCmdSpace
syn match	vimAutoCmdSpace	contained	"\s\+"	nextgroup=vimAutoCmdSfxList
syn match	vimAutoCmdSfxList	contained	"\S*"
syn keyword	vimAutoCmd	au[tocmd] do[autocmd] doautoa[ll]	skipwhite nextgroup=vimAutoEventList

" Echo and Execute -- prefer strings! {{{2
" ================
syn region	vimEcho	oneline excludenl matchgroup=vimCommand start="\<ec\%[ho]\>" skip="\(\\\\\)*\\|" end="$\||" contains=vimFunc,vimFuncVar,vimString,vimVar
syn region	vimExecute	oneline excludenl matchgroup=vimCommand start="\<exe\%[cute]\>" skip="\(\\\\\)*\\|" end="$\||\|<[cC][rR]>" contains=vimFuncVar,vimIsCommand,vimOper,vimNotation,vimOperParen,vimString,vimVar
"syn match	vimEchoHL	"echohl\="	skipwhite nextgroup=vimGroup,vimHLGroup,vimEchoHLNone
syn case ignore
syn keyword	vimEchoHLNone	none
syn case match

" Maps {{{2
" ====
syn match	vimMap		"\<map\>!\=\ze\s*[^(]" skipwhite nextgroup=vimMapMod,vimMapLhs
syn keyword	vimMap		cm[ap] cno[remap] im[ap] ino[remap] lm[ap] ln[oremap] nm[ap] nn[oremap] no[remap] om[ap] ono[remap] smap snor[emap] vm[ap] vn[oremap] xm[ap] xn[oremap] skipwhite nextgroup=vimMapBang,vimMapMod,vimMapLhs
syn keyword	vimMap		mapc[lear] smapc[lear]
syn keyword	vimUnmap		cu[nmap] iu[nmap] lu[nmap] nun[map] ou[nmap] sunm[ap] unm[ap] unm[ap] vu[nmap] xu[nmap] skipwhite nextgroup=vimMapBang,vimMapMod,vimMapLhs
syn match	vimMapLhs	contained	"\S\+"			contains=vimNotation,vimCtrlChar skipwhite nextgroup=vimMapRhs
syn match	vimMapBang	contained	"!"			skipwhite nextgroup=vimMapMod,vimMapLhs
syn match	vimMapMod	contained	"\%#=1\c<\(buffer\|expr\|\(local\)\=leader\|nowait\|plug\|script\|sid\|unique\|silent\)\+>" contains=vimMapModKey,vimMapModErr skipwhite nextgroup=vimMapMod,vimMapLhs
syn match	vimMapRhs	contained	".*" contains=vimNotation,vimCtrlChar	skipnl nextgroup=vimMapRhsExtend
syn match	vimMapRhsExtend	contained	"^\s*\\.*$"			contains=vimContinue
syn case ignore
syn keyword	vimMapModKey	contained	buffer	expr	leader	localleader	nowait	plug	script	sid	silent	unique
syn case match

" Menus {{{2
" =====
syn cluster	vimMenuList contains=vimMenuBang,vimMenuPriority,vimMenuName,vimMenuMod
syn keyword	vimCommand	am[enu] an[oremenu] aun[menu] cme[nu] cnoreme[nu] cunme[nu] ime[nu] inoreme[nu] iunme[nu] me[nu] nme[nu] nnoreme[nu] noreme[nu] nunme[nu] ome[nu] onoreme[nu] ounme[nu] unme[nu] vme[nu] vnoreme[nu] vunme[nu] skipwhite nextgroup=@vimMenuList

" Angle-Bracket Notation (tnx to Michael Geddes) {{{2
" ======================
syn case ignore
syn match	vimNotation	"\%#=1\(\\\|<lt>\)\=<\([scamd]-\)\{0,4}x\=\(f\d\{1,2}\|[^ \t:]\|cr\|lf\|linefeed\|return\|k\=del\%[ete]\|bs\|backspace\|tab\|esc\|right\|left\|help\|undo\|insert\|ins\|mouse\|k\=home\|k\=end\|kplus\|kminus\|kdivide\|kmultiply\|kenter\|kpoint\|space\|k\=\(page\)\=\(\|down\|up\|k\d\>\)\)>" contains=vimBracket
syn match	vimNotation	"\%#=1\(\\\|<lt>\)\=<\([scam2-4]-\)\{0,4}\(right\|left\|middle\)\(mouse\)\=\(drag\|release\)\=>"	contains=vimBracket
syn match	vimNotation	"\%#=1\(\\\|<lt>\)\=<\(bslash\|plug\|sid\|space\|bar\|nop\|nul\|lt\)>"			contains=vimBracket
syn match	vimNotation	'\(\\\|<lt>\)\=<C-R>[0-9a-z"%#:.\-=]'he=e-1				contains=vimBracket
syn match	vimNotation	'\%#=1\(\\\|<lt>\)\=<\%(q-\)\=\(line[12]\|count\|bang\|reg\|args\|mods\|f-args\|f-mods\|lt\)>'	contains=vimBracket
syn match	vimNotation	"\%#=1\(\\\|<lt>\)\=<\([cas]file\|abuf\|amatch\|cword\|cWORD\|client\)>"		contains=vimBracket
syn match	vimBracket contained	"[\\<>]"
syn case match

" User Function Highlighting {{{2
" (following Gautam Iyer's suggestion)
" ==========================
"syn match   vimFunc     "\I\i*\s*("	contains=vimFuncName,vimUserFunc,vimExecute
syn match   vimFunc     "\I\i*\s*("	contains=vimFuncName,vimExecute,vimUserFunc
"syn match vimFunc		"\%(\%([sSgGbBwWtTlL]:\|<[sS][iI][dD]>\)\=\%(\w\+\.\)*\I[a-zA-Z0-9_.]*\)\ze\s*("		contains=vimFuncName,vimUserFunc,vimExecute
" syn match   vimFunc     "\I\i*\s*("	contains=vimFuncName,vimUserFunc,vimExecute
"syn match vimUserFunc contained	"\%(\%([sSgGbBwWtTlL]:\|<[sS][iI][dD]>\)\=\%(\w\+\.\)*\I[a-zA-Z0-9_.]*\)\|\<\u[a-zA-Z0-9.]*\>\|\<if\>"	contains=vimNotation
"syn match vimNotFunc	"\<if\>\|\<el\%[seif]\>\|\<return\>\|\<while\>"

" Errors And Warnings: {{{2
" ====================
if !exists("g:vimsyn_noerror") && !exists("g:vimsyn_novimfunctionerror")
 syn match	vimFunctionError	"\s\zs[a-z0-9]\i\{-}\ze\s*("			contained contains=vimFuncKey,vimFuncBlank
" syn match	vimFunctionError	"\s\zs\%(<[sS][iI][dD]>\|[sSgGbBwWtTlL]:\)\d\i\{-}\ze\s*("	contained contains=vimFuncKey,vimFuncBlank
 syn match	vimElseIfErr	"\<else\s\+if\>"
 syn match	vimBufnrWarn	/\<bufnr\s*(\s*["']\.['"]\s*)/
endif

" Syntax {{{2
"=======
syn match	vimGroupList	contained	"@\=[^ \t,]*"	contains=vimGroupSpecial,vimPatSep
syn match	vimGroupList	contained	"@\=[^ \t,]*,"	nextgroup=vimGroupList contains=vimGroupSpecial,vimPatSep
syn keyword	vimGroupSpecial	contained	ALL	ALLBUT	CONTAINED	TOP
if !exists("g:vimsyn_noerror") && !exists("g:vimsyn_novimsynerror")
 syn match	vimSynError	contained	"\i\+"
 syn match	vimSynError	contained	"\i\+="	nextgroup=vimGroupList
endif
syn match	vimSynContains	contained	"\<contain\(s\|edin\)="	nextgroup=vimGroupList
syn match	vimSynKeyContainedin	contained	"\<containedin="	nextgroup=vimGroupList
syn match	vimSynNextgroup	contained	"nextgroup="	nextgroup=vimGroupList

syn match	vimSyntax	"\<sy\%[ntax]\>"	contains=vimCommand skipwhite nextgroup=vimSynType,vimComment
syn match	vimAuSyntax	contained	"\s+sy\%[ntax]"	contains=vimCommand skipwhite nextgroup=vimSynType,vimComment
"syn cluster vimFuncBodyList add=vimSyntax

" Syntax: case {{{2
syn keyword	vimSynType	contained	case	skipwhite nextgroup=vimSynCase,vimSynCaseError
if !exists("g:vimsyn_noerror") && !exists("g:vimsyn_novimsyncaseerror")
 syn match	vimSynCaseError	contained	"\i\+"
endif
syn keyword	vimSynCase	contained	ignore	match

" Syntax: clear {{{2
syn keyword	vimSynType	contained	clear	skipwhite nextgroup=vimGroupList

" Syntax: cluster {{{2
syn keyword	vimSynType	contained	cluster	skipwhite nextgroup=vimClusterName
syn region	vimClusterName	contained	matchgroup=vimGroupName start="\h\w*" skip="\\\\\|\\|" matchgroup=vimSep end="$\||" contains=vimGroupAdd,vimGroupRem,vimSynContains,vimSynError
syn match	vimGroupAdd	contained	"add="	nextgroup=vimGroupList
syn match	vimGroupRem	contained	"remove="	nextgroup=vimGroupList
"syn cluster vimFuncBodyList add=vimSynType,vimGroupAdd,vimGroupRem

" Syntax: iskeyword {{{2
syn keyword	vimSynType	contained	iskeyword	

" Syntax: include {{{2
syn keyword	vimSynType	contained	include	skipwhite nextgroup=vimGroupList
"syn cluster vimFuncBodyList add=vimSynType

" Syntax: keyword {{{2
syn cluster	vimSynKeyGroup	contains=vimSynNextgroup,vimSynKeyOpt,vimSynKeyContainedin
syn keyword	vimSynType	contained	keyword	skipwhite nextgroup=vimSynKeyRegion
syn region	vimSynKeyRegion	contained oneline keepend	matchgroup=vimGroupName start="\h\w*" skip="\\\\\|\\|" matchgroup=vimSep end="|\|$" contains=@vimSynKeyGroup
syn match	vimSynKeyOpt	contained	"\%#=1\<\(conceal\|contained\|transparent\|skipempty\|skipwhite\|skipnl\)\>"
"syn cluster vimFuncBodyList add=vimSynType

" Syntax: match {{{2
syn cluster	vimSynMtchGroup	contains=vimMtchComment,vimSynContains,vimSynError,vimSynMtchOpt,vimSynNextgroup,vimSynRegPat,vimNotation
syn keyword	vimSynType	contained	match	skipwhite nextgroup=vimSynMatchRegion
syn region	vimSynMatchRegion	contained keepend	matchgroup=vimGroupName start="\h\w*" matchgroup=vimSep end="|\|$" contains=@vimSynMtchGroup
syn match	vimSynMtchOpt	contained	"\%#=1\<\(conceal\|transparent\|contained\|excludenl\|keepend\|skipempty\|skipwhite\|display\|extend\|skipnl\|fold\)\>"
if has("conceal")
 syn match	vimSynMtchOpt	contained	"\<cchar="	nextgroup=vimSynMtchCchar
 syn match	vimSynMtchCchar	contained	"\S"
endif
"syn cluster vimFuncBodyList add=vimSynMtchGroup

" Syntax: off and on {{{2
syn keyword	vimSynType	contained	enable	list	manual	off	on	reset

" Syntax: region {{{2
syn cluster	vimSynRegPatGroup	contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange,vimSubstSubstr,vimPatRegion,vimPatSepErr,vimNotation
syn cluster	vimSynRegGroup	contains=vimSynContains,vimSynNextgroup,vimSynRegOpt,vimSynReg,vimSynMtchGrp
syn keyword	vimSynType	contained	region	skipwhite nextgroup=vimSynRegion
syn region	vimSynRegion	contained keepend	matchgroup=vimGroupName start="\h\w*" skip="\\\\\|\\|" end="|\|$" contains=@vimSynRegGroup
syn match	vimSynRegOpt	contained	"\%#=1\<\(conceal\(ends\)\=\|transparent\|contained\|excludenl\|skipempty\|skipwhite\|display\|keepend\|oneline\|extend\|skipnl\|fold\)\>"
syn match	vimSynReg	contained	"\(start\|skip\|end\)="he=e-1	nextgroup=vimSynRegPat
syn match	vimSynMtchGrp	contained	"matchgroup="	nextgroup=vimGroup,vimHLGroup
syn region	vimSynRegPat	contained extend	start="\z([-`~!@#$%^&*_=+;:'",./?]\)"  skip="\\\\\|\\\z1"  end="\z1"  contains=@vimSynRegPatGroup skipwhite nextgroup=vimSynPatMod,vimSynReg
syn match	vimSynPatMod	contained	"\%#=1\(hs\|ms\|me\|hs\|he\|rs\|re\)=[se]\([-+]\d\+\)\="
syn match	vimSynPatMod	contained	"\%#=1\(hs\|ms\|me\|hs\|he\|rs\|re\)=[se]\([-+]\d\+\)\=," nextgroup=vimSynPatMod
syn match	vimSynPatMod	contained	"lc=\d\+"
syn match	vimSynPatMod	contained	"lc=\d\+," nextgroup=vimSynPatMod
syn region	vimSynPatRange	contained	start="\["	skip="\\\\\|\\]"   end="]"
syn match	vimSynNotPatRange	contained	"\\\\\|\\\["
syn match	vimMtchComment	contained	'"[^"]\+$'
"syn cluster vimFuncBodyList add=vimSynType

" Syntax: sync {{{2
" ============
syn keyword vimSynType	contained	sync	skipwhite	nextgroup=vimSyncC,vimSyncLines,vimSyncMatch,vimSyncError,vimSyncLinebreak,vimSyncLinecont,vimSyncRegion
if !exists("g:vimsyn_noerror") && !exists("g:vimsyn_novimsyncerror")
 syn match	vimSyncError	contained	"\i\+"
endif
syn keyword	vimSyncC	contained	ccomment	clear	fromstart
syn keyword	vimSyncMatch	contained	match	skipwhite	nextgroup=vimSyncGroupName
syn keyword	vimSyncRegion	contained	region	skipwhite	nextgroup=vimSynReg
syn match	vimSyncLinebreak	contained	"\<linebreaks="	skipwhite	nextgroup=vimNumber
syn keyword	vimSyncLinecont	contained	linecont	skipwhite	nextgroup=vimSynRegPat
syn match	vimSyncLines	contained	"\(min\|max\)\=lines="	nextgroup=vimNumber
syn match	vimSyncGroupName	contained	"\h\w*"	skipwhite	nextgroup=vimSyncKey
syn match	vimSyncKey	contained	"\<groupthere\|grouphere\>"	skipwhite nextgroup=vimSyncGroup
syn match	vimSyncGroup	contained	"\h\w*"	skipwhite	nextgroup=vimSynRegPat,vimSyncNone
syn keyword	vimSyncNone	contained	NONE

" Additional IsCommand, here by reasons of precedence {{{2
" ====================
syn match	vimIsCommand	"<Bar>\s*\a\+"	transparent contains=vimCommand,vimNotation

" Highlighting {{{2
" ============
syn cluster	vimHighlightCluster		contains=vimHiLink,vimHiClear,vimHiKeyList,vimComment
if !exists("g:vimsyn_noerror") && !exists("g:vimsyn_novimhictermerror")
 syn match	vimHiCtermError	contained	"\D\i*"
endif
syn match	vimHighlight	"\<hi\%[ghlight]\>"	skipwhite nextgroup=vimHiBang,@vimHighlightCluster
syn match	vimHiBang	contained	"!"	skipwhite nextgroup=@vimHighlightCluster

syn match	vimHiGroup	contained	"\i\+"
syn case ignore
syn keyword	vimHiAttrib	contained	none bold inverse italic nocombine reverse standout strikethrough underline undercurl
syn keyword	vimFgBgAttrib	contained	none bg background fg foreground
syn case match
syn match	vimHiAttribList	contained	"\i\+"	contains=vimHiAttrib
syn match	vimHiAttribList	contained	"\i\+,"he=e-1	contains=vimHiAttrib nextgroup=vimHiAttribList
syn case ignore
syn keyword	vimHiCtermColor	contained	black blue brown cyan darkblue darkcyan darkgray darkgreen darkgrey darkmagenta darkred darkyellow gray green grey lightblue lightcyan lightgray lightgreen lightgrey lightmagenta lightred magenta red white yellow
" syn match	vimHiCtermColor	contained	"\<color\d\{1,3}\>"

syn case match

" Highlighting: hi group key=arg ... {{{2
syn cluster	vimHiCluster contains=vimGroup,vimHiGroup,vimHiTerm,vimHiCTerm,vimHiStartStop,vimHiCtermFgBg,vimHiGui,vimHiGuiFont,vimHiGuiFgBg,vimHiKeyError,vimNotation
syn region	vimHiKeyList	contained oneline start="\i\+" skip="\\\\\|\\|" end="$\||"	contains=@vimHiCluster
if !exists("g:vimsyn_noerror") && !exists("g:vimsyn_vimhikeyerror")
 syn match	vimHiKeyError	contained	"\i\+="he=e-1
endif

" Highlight: clear {{{2
" syn keyword	vimHiClear	contained	clear	nextgroup=vimHiGroup

" Highlight: link {{{2
" see tst24 (hi def vs hi) (Jul 06, 2018)
"syn region	vimHiLink	contained oneline matchgroup=vimCommand start="\(\<hi\%[ghlight]\s\+\)\@<=\(\(def\%[ault]\s\+\)\=link\>\|\<def\>\)" end="$"	contains=vimHiGroup,vimGroup,vimHLGroup,vimNotation
syn region	vimHiLink	contained oneline matchgroup=vimCommand start="\(\<hi\%[ghlight]\s\+\)\@<=\(\(def\%[ault]\s\+\)\=link\>\|\<def\>\)" end="$"	contains=@vimHiCluster
" syn cluster vimFuncBodyList add=vimHiLink

" Control Characters {{{2
" ==================
syn match	vimCtrlChar	"[--]"

" Beginners - Patterns that involve ^ {{{2
" =========
syn match	vimLineComment	+^[ \t:]*".*$+	contains=@vimCommentGroup,vimCommentString,vimCommentTitle
"syn match	vimCommentTitle	'"\s*\%([sS]:\|\h\w*#\)\=\u\w*\(\s\+\u\w*\)*:'hs=s+1	contained contains=vimTodo,@vimCommentGroup
syn match	vimContinue	"^\s*\\"
syn region	vimString	start="^\s*\\\z(['"]\)" skip='\\\\\|\\\z1' end="\z1" oneline keepend contains=@vimStringGroup,vimContinue
" syn match	vimCommentTitleLeader	'"\s\+'ms=s+1	contained

" Searches And Globals: {{{2
" ====================
"
" Scripts  : perl,ruby : Benoit Cerrina {{{2
" =======    python,tcl: Johannes Zellner
"            lua
" Synchronize (speed) {{{2
"============
" if exists("g:vimsyn_minlines")
"  exe "syn sync minlines=".g:vimsyn_minlines
" endif
" " exe "syn sync maxlines=".s:vimsyn_maxlines
" syn sync linecont	"^\s\+\\"
" syn sync match vimAugroupSyncA	groupthere NONE	"\<aug\%[roup]\>\s\+[eE][nN][dD]"

" ====================
" Highlighting Settings {{{2
" ====================

if !exists("skip_vim_syntax_inits")
 if !exists("g:vimsyn_noerror")

  hi def link vimError Normal
  hi def link vimBehaveError	vimError
  hi def link vimCollClassErr	vimError
  hi def link vimErrSetting	vimError
  hi def link vimEmbedError	vimError
  hi def link vimFTError	vimError
  hi def link vimFunctionError	vimError
  hi def link vimFunc         	vimError
  hi def link vimHiAttribList	vimError
  hi def link vimHiCtermError	vimError
  hi def link vimHiKeyError	vimError
  hi def link vimKeyCodeError	vimError
  hi def link vimMapModErr	vimError
  hi def link vimSubstFlagErr	vimError
  hi def link vimSynCaseError	vimError
  hi def link vimBufnrWarn	vimWarn
 endif

 hi def link vimAbb	vimCommand
 hi def link vimAddress	vimMark
 hi def link vimAugroupError	vimError
 hi def link vimAugroupKey	vimCommand
 hi def link vimAuHighlight	vimHighlight
 hi def link vimAutoCmdOpt	vimOption
 hi def link vimAutoCmd	vimCommand
 hi def link vimAutoEvent	Type
 hi def link vimAutoSet	vimCommand
 hi def link vimBehaveModel	vimBehave
 hi def link vimBehave	vimCommand
 hi def link vimBracket	Delimiter
 hi def link vimCmplxRepeat	SpecialChar
 hi def link vimCommand	Statement
 hi def link vimComment	Comment
 hi def link vimCommentString	vimString
 hi def link vimCommentTitle	PreProc
 hi def link vimCondHL	vimCommand
 hi def link vimContinue	Special
 hi def link vimCtrlChar	SpecialChar
 hi def link vimEchoHLNone	vimGroup
 hi def link vimEchoHL	vimCommand
 hi def link vimElseIfErr	Error
 hi def link vimElseif	vimCondHL
 hi def link vimEnvvar	PreProc
 hi def link vimError	Error
 hi def link vimFBVar	vimVar
 hi def link vimFgBgAttrib	vimHiAttrib
 hi def link vimFold	Folded
 hi def link vimFTCmd	vimCommand
 hi def link vimFTOption	vimSynType
 hi def link vimFuncKey	vimCommand
 hi def link vimFuncName	Function
 hi def link vimFuncSID	Special
 hi def link vimFuncVar	Identifier
 hi def link vimGroupAdd	vimSynOption
 hi def link vimGroupName	vimGroup
 hi def link vimGroupRem	vimSynOption
 hi def link vimGroupSpecial	Special
 hi def link vimGroup	Type
 hi def link vimHiAttrib	PreProc
 hi def link vimHiClear	vimHighlight
 hi def link vimHiCtermFgBg	vimHiTerm
 hi def link vimHiCTerm	vimHiTerm
 hi def link vimHighlight	vimCommand
 hi def link vimHiGroup	vimGroupName
 hi def link vimHiGuiFgBg	vimHiTerm
 hi def link vimHiGuiFont	vimHiTerm
 hi def link vimHiGuiRgb	vimNumber
 hi def link vimHiGui	vimHiTerm
 hi def link vimHiNmbr	Number
 hi def link vimHiStartStop	vimHiTerm
 hi def link vimHiTerm	Type
 hi def link vimHLGroup	vimGroup
 hi def link vimHLMod	PreProc
 hi def link vimInsert	vimString
 hi def link vimIskSep	Delimiter
 hi def link vimKeyCode	vimSpecFile
 hi def link vimKeyword	Statement
 hi def link vimLet	vimCommand
 hi def link vimLineComment	vimComment
 hi def link vimMapBang	vimCommand
 hi def link vimMapModKey	vimFuncSID
 hi def link vimMapMod	vimBracket
 hi def link vimMap	vimCommand
 hi def link vimMark	Number
 hi def link vimMarkNumber	vimNumber
 hi def link vimMenuMod	vimMapMod
 hi def link vimMenuNameMore	vimMenuName
 hi def link vimMenuName	PreProc
 hi def link vimMtchComment	vimComment
 hi def link vimNorm	vimCommand
 hi def link vimNotation	Special
 hi def link vimNotFunc	vimCommand
 hi def link vimNotPatSep	vimString
 hi def link vimNumber	Number
 hi def link vimOperError	Error
 hi def link vimOper	Operator
 hi def link vimOption	PreProc
 hi def link vimParenSep	Delimiter
 hi def link vimPatSepErr	vimError
 hi def link vimPatSepR	vimPatSep
 hi def link vimPatSep	SpecialChar
 hi def link vimPatSepZone	vimString
 hi def link vimPatSepZ	vimPatSep
 hi def link vimPattern	Type
 hi def link vimPlainMark	vimMark
 hi def link vimPlainRegister	vimRegister
 hi def link vimRegister	SpecialChar
 hi def link vimScriptDelim	Comment
 hi def link vimSearchDelim	Statement
 hi def link vimSearch	vimString
 hi def link vimSep	Delimiter
 hi def link vimSetMod	vimOption
 hi def link vimSetSep	Statement
 hi def link vimSetString	vimString
 hi def link vimSpecFile	Identifier
 hi def link vimSpecFileMod	vimSpecFile
 hi def link vimSpecial	Type
 hi def link vimStatement	Statement
 hi def link vimStringCont	vimString
 hi def link vimString	String
 hi def link vimStringEnd	vimString
 hi def link vimSubst1	vimSubst
 hi def link vimSubstDelim	Delimiter
 hi def link vimSubstFlags	Special
 hi def link vimSubstSubstr	SpecialChar
 hi def link vimSubstTwoBS	vimString
 hi def link vimSubst	vimCommand
 hi def link vimSynCaseError	Error
 hi def link vimSynCase	Type
 hi def link vimSyncC	Type
 hi def link vimSyncError	Error
 hi def link vimSyncGroupName	vimGroupName
 hi def link vimSyncGroup	vimGroupName
 hi def link vimSyncKey	Type
 hi def link vimSyncNone	Type
 hi def link vimSynContains	vimSynOption
 hi def link vimSynError	Error
 hi def link vimSynKeyContainedin	vimSynContains
 hi def link vimSynKeyOpt	vimSynOption
 hi def link vimSynMtchGrp	vimSynOption
 hi def link vimSynMtchOpt	vimSynOption
 hi def link vimSynNextgroup	vimSynOption
 hi def link vimSynNotPatRange	vimSynRegPat
 hi def link vimSynOption	Special
 hi def link vimSynPatRange	vimString
 hi def link vimSynRegOpt	vimSynOption
 hi def link vimSynRegPat	vimString
 hi def link vimSynReg	Type
 hi def link vimSyntax	vimCommand
 hi def link vimSynType	vimSpecial
 hi def link vimTodo	Todo
 hi def link vimUnmap	vimMap
 hi def link vimUserAttrbCmpltFunc	Special
 hi def link vimUserAttrbCmplt	vimSpecial
 hi def link vimUserAttrbKey	vimOption
 hi def link vimUserAttrb	vimSpecial
 hi def link vimUserAttrbError	Error
 hi def link vimUserCmdError	Error
 hi def link vimUserCommand	vimCommand
 hi def link vimUserFunc	Normal
 hi def link vimVar	Identifier
 hi def link vimWarn	WarningMsg
endif

" Current Syntax Variable: {{{2
let b:current_syntax = "vim"

" ---------------------------------------------------------------------
let &cpo = s:keepcpo
unlet s:keepcpo
" vim:ts=18  fdm=marker
