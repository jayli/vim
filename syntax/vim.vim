" Vim syntax file
" Language:	Vim 5.7 script
" Maintainer:	Dr. Charles E. Campbell, Jr. <Charles.E.Campbell.1@gsfc.nasa.gov>
" Last Change:	June 27, 2000
" Version:	5.7-01

" Remove old syntax
syn clear

" vimTodo: contains common special-notices for comments
"          Use the vimCommentGroup cluster to add your own.
syn keyword vimTodo contained	COMBAK	NOT	RELEASED	TODO
syn cluster vimCommentGroup	contains=vimTodo

" regular vim commands
syn keyword vimCommand contained a[ppend] abc[lear] abo[veleft] al[l] ar[gs] arga[dd] argd[elete] argdo arge[dit] argg[lobal] argl[ocal] argu[ment] as[cii] b[uffer] bN[ext] ba[ll] bad[d] bd[elete] bel[owright] bf[irst] bl[ast] bm[odified] bn[ext] bo[tright] bp[revious] br[ewind] brea[k] breaka[dd] breakd[el] breakl[ist] bro[wse] buffers bufd[o] bun[load] bw[ipeout] c[hange] cN[ext] cNf[ile] cabc[lear] cad[dbuffer] cadde[xpr] caddf[ile] cal[l] cat[ch] cb[uffer] cbo[ttom] cc ccl[ose] cd cdo ce[nter] cex[pr] cf[ile] cfd[o] cfir[st] cg[etfile] cgetb[uffer] cgete[xpr] chd[ir] changes che[ckpath] checkt[ime] chi[story] cl[ist] cla[st] clo[se] cle[arjumps] cn[ext] cnew[er] cnf[ile] co[py] col[der] colo[rscheme] com[mand] comc[lear] comp[iler] con[tinue] conf[irm] cope[n]
syn keyword vimCommand contained cp[revious] cpf[ile] cq[uit] cr[ewind] cs[cope] cst[ag] cuna[bbrev] cw[indow] d[elete] delm[arks] deb[ug] debugg[reedy] delc[ommand] delf[unction] di[splay] dif[fupdate] diffg[et] diffo[ff] diffp[atch] diffpu[t] diffs[plit] difft[his] dig[raphs] dj[ump] dli[st] dr[op] ds[earch] dsp[lit] e[dit] ea[rlier] echoe[rr] echom[sg] echon el[se] elsei[f] em[enu] en[dif] endf[unction] endfo[r] endt[ry] endw[hile] ene[w] ex exi[t] exu[sage] f[ile] files filt[er] fin[d] fina[lly] fini[sh] fir[st] fix[del] fo[ld] foldc[lose] foldd[oopen] folddoc[losed] foldo[pen] for fu[nction] g[lobal] go[to] gr[ep] grepa[dd] gu[i] gv[im] h[elp] helpc[lose] helpf[ind] helpg[rep] helpt[ags] ha[rdcopy] hi[ghlight] hid[e] his[tory] i[nsert] iabc[lear] if ij[ump]
syn keyword vimCommand contained il[ist] int[ro] is[earch] isp[lit] iuna[bbrev] j[oin] ju[mps] k kee[pmarks] keepj[umps] keepp[atterns] keepa[lt] l[ist] lN[ext] lNf[ile] la[st] lan[guage] lad[dexpr] laddb[uffer] laddf[ile] lat[er] lb[uffer] lbo[ttom] lc[d] lch[dir] lcl[ose] lcs[cope] ld[o] le[ft] lefta[bove] let lex[pr] lf[ile] lfd[o] lfir[st] lg[etfile] lgetb[uffer] lgete[xpr] lgr[ep] lgrepa[dd] lh[elpgrep] lhi[story] ll lla[st] lli[st] lmak[e] lne[xt] lnew[er] lnf[ile] lo[adview] loadk[eymap] loc[kmarks] lockv[ar] lol[der] lop[en] lp[revious] lpf[ile] lr[ewind] lt[ag] lua luad[o] luaf[ile] lv[imgrep] lvimgrepa[dd] lw[indow] ls m[ove] ma[rk] mak[e] marks mat[ch] menut[ranslate] mes[sages] mk[exrc] mks[ession] mksp[ell] mkv[imrc] mkvie[w] mod[e] mz[scheme] mzf[ile]
syn keyword vimCommand contained n[ext] nb[key] nbc[lose] nbs[tart] new noa[utocmd] noh[lsearch] nos[wapfile] nu[mber] o[pen] ol[dfiles] on[ly] opt[ions] ow[nsyntax] p[rint] pa[ckadd] packl[oadall] pc[lose] pe[rl] perld[o] ped[it] po[p] popu[p] pp[op] pre[serve] prev[ious] pro[mptfind] promptr[epl] prof[ile] profd[el] ps[earch] pt[ag] ptN[ext] ptf[irst] ptj[ump] ptl[ast] ptn[ext] ptp[revious] ptr[ewind] pts[elect] pu[t] pw[d] py[thon] pyd[o] pyf[ile] py3 py3d[o] python3 py3f[ile] pyx pyxd[o] pythonx pyxf[ile] q[uit] quita[ll] qa[ll] r[ead] rec[over] red[o] redi[r] redr[aw] redraws[tatus] reg[isters] res[ize] ret[ab] retu[rn] rew[ind] ri[ght] rightb[elow] ru[ntime] rub[y] rubyd[o] rubyf[ile] rund[o] rv[iminfo] sN[ext] sa[rgument] sal[l] san[dbox] sav[eas] sb[uffer]
syn keyword vimCommand contained sbN[ext] sba[ll] sbf[irst] sbl[ast] sbm[odified] sbn[ext] sbp[revious] sbr[ewind] sc[riptnames] scripte[ncoding] scs[cope] setf[iletype] sf[ind] sfir[st] sh[ell] si[malt] sig[n] sil[ent] sl[eep] sla[st] sn[ext] so[urce] sor[t] sp[lit] spe[llgood] spelld[ump] spelli[nfo] spellr[epall] spellu[ndo] spellw[rong] spr[evious] sr[ewind] st[op] sta[g] star[tinsert] startg[replace] startr[eplace] stopi[nsert] stj[ump] sts[elect] sun[hide] sus[pend] sv[iew] sw[apname] synti[me] sync[bind] smi[le] t tN[ext] ta[g] tags tab tabc[lose] tabd[o] tabe[dit] tabf[ind] tabfir[st] tabm[ove] tabl[ast] tabn[ext] tabnew tabo[nly] tabp[revious] tabN[ext] tabr[ewind] tabs tc[l] tcld[o] tclf[ile] te[aroff] ter[minal] tf[irst] th[row] tj[ump] tl[ast] tm[enu]
syn keyword vimCommand contained tma[p] tmapc[lear] tn[ext] tno[remap] to[pleft] tp[revious] tr[ewind] try ts[elect] tu[nmenu] tunma[p] u[ndo] undoj[oin] undol[ist] una[bbreviate] unh[ide] unl[et] unlo[ckvar] uns[ilent] up[date] v[global] ve[rsion] verb[ose] vert[ical] vi[sual] vie[w] vim[grep] vimgrepa[dd] viu[sage] vne[w] vs[plit] w[rite] wN[ext] wa[ll] wh[ile] wi[nsize] winc[md] wind[o] winp[os] wn[ext] wp[revious] wq wqa[ll] ws[verb] wu[ndo] wv[iminfo] x[it] xa[ll] y[ank] z N[ext] P[rint] X dl dell delel deletl deletel dp dep delp delep deletp deletep
syn match   vimCommand contained	"z[-+^.=]"

" All vimCommands are contained by vimIsCommands.
syn match vimCmdSep	"[:|]\+"	skipwhite nextgroup=vimAddress,vimAutoCmd,vimMark,vimFilter,vimUserCmd,vimSet,vimLet,vimCommand,vimSyntax
syn match vimIsCommand	"\<\a\+\>"	contains=vimCommand

" vimOptions are caught only when contained in a vimSet
syn keyword vimOption contained al aleph anti antialias arab arabic arshape arabicshape ari allowrevins akm altkeymap ambw ambiwidth acd autochdir ai autoindent ar autoread aw autowrite awa autowriteall bg background bs backspace bk backup bkc backupcopy bdir backupdir bex backupext bsk backupskip bdlay balloondelay beval ballooneval bevalterm balloonevalterm bexpr balloonexpr bo belloff bin binary bomb brk breakat bri breakindent briopt breakindentopt bsdir browsedir bh bufhidden bl buflisted bt buftype cmp casemap cd cdpath cedit ccv charconvert cin cindent cink cinkeys cino cinoptions cinw cinwords cb clipboard ch cmdheight cwh cmdwinheight cc colorcolumn co columns com comments cms commentstring cp compatible cpt complete cocu concealcursor cole conceallevel
syn keyword vimOption contained cfu completefunc cot completeopt cf confirm ci copyindent cpo cpoptions cm cryptmethod cspc cscopepathcomp csprg cscopeprg csqf cscopequickfix csre cscoperelative cst cscopetag csto cscopetagorder csverb cscopeverbose crb cursorbind cuc cursorcolumn cul cursorline debug def define deco delcombine dict dictionary diff dex diffexpr dip diffopt dg digraph dir directory dy display ead eadirection ed edcompatible emo emoji enc encoding eol endofline ea equalalways ep equalprg eb errorbells ef errorfile efm errorformat ek esckeys ei eventignore et expandtab ex exrc fenc fileencoding fencs fileencodings ff fileformat ffs fileformats fic fileignorecase ft filetype fcs fillchars fixeol fixendofline fk fkmap fcl foldclose fdc foldcolumn fen foldenable
syn keyword vimOption contained fde foldexpr fdi foldignore fdl foldlevel fdls foldlevelstart fmr foldmarker fdm foldmethod fml foldminlines fdn foldnestmax fdo foldopen fdt foldtext fex formatexpr fo formatoptions flp formatlistpat fp formatprg fs fsync gd gdefault gfm grepformat gp grepprg gcr guicursor gfn guifont gfs guifontset gfw guifontwide ghr guiheadroom go guioptions guipty gtl guitablabel gtt guitabtooltip hf helpfile hh helpheight hlg helplang hid hidden hl highlight hi history hk hkmap hkp hkmapp hls hlsearch icon iconstring ic ignorecase imaf imactivatefunc imak imactivatekey imc imcmdline imd imdisable imi iminsert ims imsearch imsf imstatusfunc imst imstyle inc include inex includeexpr is incsearch inde indentexpr indk indentkeys inf infercase
syn keyword vimOption contained im insertmode isf isfname isi isident isk iskeyword isp isprint js joinspaces key kmp keymap km keymodel kp keywordprg lmap langmap lm langmenu lnr langnoremap lrm langremap ls laststatus lz lazyredraw lbr linebreak lines lsp linespace lisp lw lispwords list lcs listchars lpl loadplugins luadll macatsui magic mef makeef menc makeencoding mp makeprg mps matchpairs mat matchtime mco maxcombine mfd maxfuncdepth mmd maxmapdepth mm maxmem mmp maxmempattern mmt maxmemtot mis menuitems msm mkspellmem ml modeline mls modelines ma modifiable mod modified more mouse mousef mousefocus mh mousehide mousem mousemodel mouses mouseshape mouset mousetime mzschemedll mzschemegcdll mzq mzquantum nf nrformats nu number nuw numberwidth ofu omnifunc
syn keyword vimOption contained odev opendevice opfunc operatorfunc pp packpath para paragraphs paste pt pastetoggle pex patchexpr pm patchmode pa path perldll pi preserveindent pvh previewheight pvw previewwindow pdev printdevice penc printencoding pexpr printexpr pfn printfont pheader printheader pmbcs printmbcharset pmbfn printmbfont popt printoptions prompt ph pumheight pythonthreedll pythondll pyx pyxversion qe quoteescape ro readonly rdt redrawtime re regexpengine rnu relativenumber remap rop renderoptions report rs restorescreen ri revins rl rightleft rlc rightleftcmd rubydll ru ruler ruf rulerformat rtp runtimepath scr scroll scb scrollbind sj scrolljump so scrolloff sbo scrollopt sect sections secure sel selection slm selectmode ssop sessionoptions sh shell
syn keyword vimOption contained shcf shellcmdflag sp shellpipe shq shellquote srr shellredir ssl shellslash stmp shelltemp st shelltype sxq shellxquote sxe shellxescape sr shiftround sw shiftwidth shm shortmess sn shortname sbr showbreak sc showcmd sft showfulltag sm showmatch smd showmode stal showtabline ss sidescroll siso sidescrolloff scl signcolumn scs smartcase si smartindent sta smarttab sts softtabstop spell spc spellcapcheck spf spellfile spl spelllang sps spellsuggest sb splitbelow spr splitright sol startofline stl statusline su suffixes sua suffixesadd swf swapfile sws swapsync swb switchbuf smc synmaxcol syn syntax tal tabline tpm tabpagemax ts tabstop tbs tagbsearch tc tagcase tl taglength tr tagrelative tag tags tgst tagstack tcldll term tbidi termbidi
syn keyword vimOption contained tenc termencoding tgc termguicolors tk termkey tms termsize terse ta textauto tx textmode tw textwidth tsr thesaurus top tildeop to timeout tm timeoutlen title titlelen titleold titlestring tb toolbar tbis toolbariconsize ttimeout ttm ttimeoutlen tbi ttybuiltin tf ttyfast ttym ttymouse tsl ttyscroll tty ttytype udir undodir udf undofile ul undolevels ur undoreload uc updatecount ut updatetime vbs verbose vfile verbosefile vdir viewdir vop viewoptions vi viminfo vif viminfofile ve virtualedit vb visualbell warn wiv weirdinvert ww whichwrap wc wildchar wcm wildcharm wig wildignore wic wildignorecase wmnu wildmenu wim wildmode wop wildoptions wak winaltkeys wi window wh winheight wfh winfixheight wfw winfixwidth wmh winminheight wmw winminwidth
syn keyword vimOption contained winptydll wiw winwidth wrap wm wrapmargin ws wrapscan write wa writeany wb writebackup wd writedelay

" termcap codes (which can also be set)
syn keyword vimOption contained t_AB t_AF t_AL t_al t_bc t_BE t_BD t_cd t_ce t_cl t_cm t_Ce t_Co t_CS t_Cs t_cs t_CV t_da t_db t_DL t_dl t_EC t_EI t_fs t_GP t_IE t_IS t_ke t_ks t_le t_mb t_md t_me t_mr t_ms t_nd t_op t_RF t_RB t_RC t_RI t_RS t_RV t_Sb t_SC t_se t_Sf t_SH t_SI t_so t_SR t_sr t_Te t_te t_ti t_Ts t_ts t_u7 t_ue t_us t_ut t_vb t_ve t_vi t_VS t_vs t_WP t_WS t_xn t_xs t_ZH t_ZR t_8f t_8b
" term key codes
syn keyword vimOption contained	t_F1 t_F2 t_F3 t_F4 t_F5 t_F6 t_F7 t_F8 t_F9 t_k1 t_K1 t_k2 t_k3 t_K3 t_k4 t_K4 t_k5 t_K5 t_k6 t_K6 t_k7 t_K7 t_k8 t_K8 t_k9 t_K9 t_KA t_kb t_kB t_KB t_KC t_kd t_kD t_KD t_KE t_KF t_KG t_kh t_KH t_kI t_KI t_KJ t_KK t_kl t_KL t_kN t_kP t_kr t_ku
syn match   vimOption contained	"t_%1"
syn match   vimOption contained	"t_#2"
syn match   vimOption contained	"t_#4"
syn match   vimOption contained	"t_@7"
syn match   vimOption contained	"t_*7"
syn match   vimOption contained	"t_&8"
syn match   vimOption contained	"t_%i"
syn match   vimOption contained	"t_k;"

" these settings don't actually cause errors in vim, but were supported by vi and don't do anything in vim
syn keyword vimErrSetting contained	hardtabs	w1200	w9600	wi	window
syn keyword vimErrSetting contained	ht	w300

" AutoBuf Events
syn case ignore
syn keyword vimAutoEvent contained	BufCreate	BufReadPost	FileChangedShell	FilterReadPre	Syntax
syn keyword vimAutoEvent contained	BufDelete	BufReadPre	FileEncoding	FilterWritePost	TermChanged
syn keyword vimAutoEvent contained	BufEnter	BufUnload	FileReadPost	FilterWritePre	User
syn keyword vimAutoEvent contained	BufFilePost	BufWrite	FileReadPre	FocusGained	VimEnter
syn keyword vimAutoEvent contained	BufFilePre	BufWritePost	FileType	FocusLost	VimLeave
syn keyword vimAutoEvent contained	BufHidden	BufWritePre	FileWritePost	GUIEnter	VimLeavePre
syn keyword vimAutoEvent contained	BufLeave	CursorHold	FileWritePre	StdinReadPost	WinEnter
syn keyword vimAutoEvent contained	BufNewFile	FileAppendPost	FilterReadPost	StdinReadPre	WinLeave
syn keyword vimAutoEvent contained	BufRead	FileAppendPre

" Highlight commonly used Groupnames
syn keyword vimGroup contained	Comment	Identifier	Keyword	Type	Delimiter
syn keyword vimGroup contained	Constant	Function	Exception	StorageClass	SpecialComment
syn keyword vimGroup contained	String	Statement	PreProc	Structure	Debug
syn keyword vimGroup contained	Character	Conditional	Include	Typedef	Ignore
syn keyword vimGroup contained	Number	Repeat	Define	Special	Error
syn keyword vimGroup contained	Boolean	Label	Macro	SpecialChar	Todo
syn keyword vimGroup contained	Float	Operator	PreCondit	Tag

" Default highlighting groups
syn keyword vimHLGroup contained	Cursor	Menu	Normal	SpecialKey	Visual
syn keyword vimHLGroup contained	Directory	ModeMsg	Question	StatusLine	VisualNOS
syn keyword vimHLGroup contained	ErrorMsg	MoreMsg	Scrollbar	StatusLineNC	WarningMsg
syn keyword vimHLGroup contained	IncSearch	NonText	Search	Title	WildMenu
syn keyword vimHLGroup contained	LineNr
syn case match

" Function Names
syn keyword vimFuncName contained abs acos add and append argc argidx arglistid argv asin assert_equal assert_exception assert_fails assert_false assert_inrange assert_match assert_notequal assert_notmatch assert_report assert_true atan atan2 balloon_show balloon_split browse browsedir bufexists buflisted bufloaded bufname bufnr bufwinid bufwinnr byte2line byteidx byteidxcomp call ceil ch_canread ch_close ch_close_in ch_evalexpr ch_evalraw ch_getbufnr ch_getjob ch_info ch_log ch_logfile ch_open ch_read ch_readraw ch_sendexpr ch_sendraw ch_setoptions ch_status changenr char2nr cindent clearmatches col complete complete_add complete_check confirm copy cos cosh count cscope_connection cursor deepcopy delete did_filetype diff_filler diff_hlID empty escape eval eventhandler
syn keyword vimFuncName contained executable execute exepath exists exp expand extend feedkeys filereadable filewritable filter finddir findfile float2nr floor fmod fnameescape fnamemodify foldclosed foldclosedend foldlevel foldtext foldtextresult foreground funcref function garbagecollect get getbufinfo getbufline getbufvar getchar getcharmod getcharsearch getcmdline getcmdpos getcmdtype getcmdwintype getcompletion getcurpos getcwd getfontname getfperm getfsize getftime getftype getline getloclist getmatches getpid getpos getqflist getreg getregtype gettabinfo gettabvar gettabwinvar getwininfo getwinposx getwinposy getwinvar glob glob2regpat globpath has has_key haslocaldir hasmapto histadd histdel histget histnr hlID hlexists hostname iconv indent index input
syn keyword vimFuncName contained inputdialog inputlist inputrestore inputsave inputsecret insert invert isdirectory islocked isnan items job_getchannel job_info job_setoptions job_start job_status job_stop join js_decode js_encode json_decode json_encode keys len libcall libcallnr line line2byte lispindent localtime log log10 luaeval map maparg mapcheck match matchadd matchaddpos matcharg matchdelete matchend matchlist matchstr matchstrpos max min mkdir mode mzeval nextnonblank nr2char or pathshorten perleval pow prevnonblank printf pumvisible py3eval pyeval pyxeval range readfile reltime reltimefloat reltimestr remote_expr remote_foreground remote_peek remote_read remote_send remote_startserver remove rename repeat resolve reverse round screenattr screenchar
syn keyword vimFuncName contained screencol screenrow search searchdecl searchpair searchpairpos searchpos server2client serverlist setbufline setbufvar setcharsearch setcmdpos setfperm setline setloclist setmatches setpos setqflist setreg settabvar settabwinvar setwinvar sha256 shellescape shiftwidth simplify sin sinh sort soundfold spellbadword spellsuggest split sqrt str2float str2nr strcharpart strchars strdisplaywidth strftime strgetchar stridx string strlen strpart strridx strtrans strwidth submatch substitute synID synIDattr synIDtrans synconcealed synstack system systemlist tabpagebuflist tabpagenr tabpagewinnr tagfiles taglist tan tanh tempname term_getaltscreen term_getattr term_getcursor term_getjob term_getline term_getscrolled term_getsize term_getstatus
syn keyword vimFuncName contained term_gettitle term_gettty term_list term_scrape term_sendkeys term_start term_wait test_alloc_fail test_autochdir test_feedinput test_garbagecollect_now test_ignore_error test_null_channel test_null_dict test_null_job test_null_list test_null_partial test_null_string test_override test_settime timer_info timer_pause timer_start timer_stop timer_stopall tolower toupper tr trunc type undofile undotree uniq values virtcol visualmode wildmenumode win_findbuf win_getid win_gotoid win_id2tabwin win_id2win win_screenpos winbufnr wincol winheight winline winnr winrestcmd winrestview winsaveview winwidth wordcount writefile xor

syn match   vimFunc     "\I\i*\s*("	contains=vimFuncName,vimCommand
"syn match vimFunc		"\%(\%([sSgGbBwWtTlL]:\|<[sS][iI][dD]>\)\=\%([a-zA-Z0-9_]\+\.\)*\I[a-zA-Z0-9_.]*\)\ze\s*("		contains=vimFuncName,vimCommand
"--- syntax above generated by mkvimvim ---

" Special Vim Highlighting

" Behave!
" =======
syn match   vimBehave	"\<be\(h\(a\(ve\=\)\=\)\=\)\=\>" contains=vimCommand skipwhite nextgroup=vimBehaveModel,vimBehaveError
syn keyword vimBehaveModel contained	mswin	xterm
syn match   vimBehaveError contained	"[^ ]\+"

" Filetypes
" =========
syn match   vimFiletype	"filet\(y\(pe\=\)\=\)\=\s\+\I\i*"	skipwhite contains=vimFTCmd,vimFTOption,vimFTError
syn match   vimFTError  contained	"\I\i*"
syn keyword vimFTCmd    contained	filet[ype]
syn keyword vimFTOption contained	on	off

" Functions : Tag is provided for those who wish to highlight tagged functions
" =========
syn cluster vimFuncList	contains=vimCommand,Tag
syn cluster vimFuncBodyList	contains=vimIsCommand,vimFunction,vimFunctionError,vimFuncBody,vimSpecFile,vimOper,vimNumber,vimComment,vimString,vimSubst,vimMark,vimRegister,vimAddress,vimFilter,vimCmplxRepeat,vimComment,vimLet,vimSet,vimAutoCmd,vimRegion,vimSynLine,vimNotation,vimCtrlChar,vimFuncVar
syn match   vimFunction	"\<fu\(n\(c\(t\(t\(i\(on\=\)\=\)\=\)\=\)\=\)\=\)\=!\=\s\+\u\w*("me=e-1	contains=@vimFuncList nextgroup=vimFuncBody
syn match   vimFunctionError	"\<fu\(n\(c\(t\(t\(i\(on\=\)\=\)\=\)\=\)\=\)\=\)\=!\=\s\+\U.\{-}("me=e-1	contains=vimCommand   nextgroup=vimFuncBody
syn region  vimFuncBody contained	start=")"	end="\<endf"	contains=@vimFuncBodyList
syn match   vimFuncVar  contained	"a:\(\I\i*\|\d\+\)"

syn keyword vimPattern  contained	start	skip	end

" Special Filenames, Modifiers, Extension Removal
syn match vimSpecFile	"<c\(word\|WORD\)>"	nextgroup=vimSpecFileMod,vimSubst
syn match vimSpecFile	"<\([acs]file\|amatch\|abuf\)>"	nextgroup=vimSpecFileMod,vimSubst
syn match vimSpecFile	"\s%[ \t:]"ms=s+1,me=e-1	nextgroup=vimSpecFileMod,vimSubst
syn match vimSpecFile	"\s%$"ms=s+1		nextgroup=vimSpecFileMod,vimSubst
syn match vimSpecFile	"\s%<"ms=s+1,me=e-1	nextgroup=vimSpecFileMod,vimSubst
syn match vimSpecFile	"#\d\+\|[#%]<\>"		nextgroup=vimSpecFileMod,vimSubst
syn match vimSpecFileMod	"\(:[phtre]\)\+"		contained

" Operators
syn match vimOper	"||\|&&\|!=\|>=\|<=\|=\~\|!\~\|>\|<\|+\|-\|=\|\." skipwhite nextgroup=vimString,vimSpecFile

" User-Specified Commands
syn cluster vimUserCmdList	contains=vimAddress,vimSyntax,vimHighlight,vimAutoCmd,vimCmplxRepeat,vimComment,vimCtrlChar,vimEscapeBrace,vimFilter,vimFunc,vimFunction,vimIsCommand,vimMark,vimNotation,vimNumber,vimOper,vimRegion,vimRegister,vimLet,vimSet,vimSetEqual,vimSetString,vimSpecFile,vimString,vimSubst,vimSubstEnd,vimSubstRange,vimSynLine
syn match   vimUserCmd	"\<com\(m\(a\(nd\=\)\=\)\=\)\=!\=\>.*$"		contains=vimUserAttrb,@vimUserCmdList
syn match   vimUserAttrb	contained	"-n\(a\(r\(gs\=\)\=\)\=\)\==[01*?+]"	contains=vimUserAttrbKey,vimOper
syn match   vimUserAttrb	contained	"-com\(p\(l\(e\(te\=\)\=\)\=\)\=\)\==\(augroup\|buffer\|command\|dir\|event\|file\|help\|highlight\|menu\|option\|tag\|var\)"	contains=vimUserAttrbKey,vimUserAttrbCmplt,vimOper
syn match   vimUserAttrb	contained	"-ra\(n\(ge\=\)\=\)\=\(=%\|=\d\+\)\="	contains=vimNumber,vimOper,vimUserAttrbKey
syn match   vimUserAttrb	contained	"-cou\(nt\=\)\==\d\+"		contains=vimNumber,vimOper,vimUserAttrbKey
syn match   vimUserAttrb	contained	"-b\(a\(ng\=\)\=\)\="		contains=vimOper,vimUserAttrbKey
syn match   vimUserAttrb	contained	"-re\(g\(i\(s\(t\(er\=\)\=\)\=\)\=\)\=\)\="	contains=vimOper,vimUserAttrbKey
syn keyword vimUserAttrbKey	contained	b[ang]	cou[nt]	ra[nge]
syn keyword vimUserAttrbKey	contained	com[plete]	n[args]	re[gister]
syn keyword vimUserAttrbCmplt	contained	augroup	dir	help	menu	tag
syn keyword vimUserAttrbCmplt	contained	buffer	event	highlight	option	var
syn keyword vimUserAttrbCmplt	contained	command	file

" Numbers
" =======
syn match vimNumber	"\<\d\+.\d\+"
syn match vimNumber	"\<\d\+L\="
syn match vimNumber	"-\d\+.\d\+"
syn match vimNumber	"-\d\+L\="
syn match vimNumber	"[[;:]\d\+"lc=1
syn match vimNumber	"0[xX]\x\+"
syn match vimNumber	"#\x\+"

" Lower Priority Comments: after some vim commands...
" =======================
syn match  vimComment	+\s"[^\-:.%#=*].*$+lc=1	contains=@vimCommentGroup,vimCommentString
syn match  vimComment	+\<endif\s\+".*$+lc=5	contains=@vimCommentGroup,vimCommentString
syn match  vimComment	+\<else\s\+".*$+lc=4	contains=@vimCommentGroup,vimCommentString
syn region vimCommentString	contained oneline start='\S\s\+"'ms=s+1	end='"'

" Environment Variables
" =====================
syn match vimEnvvar	"\$\I\i*"
syn match vimEnvvar	"\${\I\i*}"

" Try to catch strings, if nothing else matches (therefore it must precede the others!)
"  vmEscapeBrace handles ["]  []"] (ie. stays as string)
syn region	vimEscapeBrace	oneline contained transparent	start="[^\\]\(\\\\\)*\[\^\=\]\=" skip="\\\\\|\\\]" end="\]"me=e-1
syn match	vimPatSep	contained	"\\[|()]"
syn match	vimNotPatSep	contained	"\\\\"
syn region	vimString	oneline	start=+[^:a-zA-Z>!\\]"+lc=1 skip=+\\\\\|\\"+ end=+"+	contains=vimEscapeBrace,vimPatSep,vimNotPatSep
syn region	vimString	oneline	start=+[^:a-zA-Z>!\\]'+lc=1 skip=+\\\\\|\\'+ end=+'+	contains=vimEscapeBrace,vimPatSep,vimNotPatSep
syn region	vimString	oneline	start=+=!+lc=1	skip=+\\\\\|\\!+ end=+!+		contains=vimEscapeBrace,vimPatSep,vimNotPatSep
syn region	vimString	oneline	start="=+"lc=1	skip="\\\\\|\\+" end="+"		contains=vimEscapeBrace,vimPatSep,vimNotPatSep
syn region	vimString	oneline	start="[^\\]+\s*[^a-zA-Z0-9.]"lc=1 skip="\\\\\|\\+" end="+"	contains=vimEscapeBrace,vimPatSep,vimNotPatSep
syn region	vimString	oneline	start="\s/\s*\A"lc=1 skip="\\\\\|\\+" end="/"		contains=vimEscapeBrace,vimPatSep,vimNotPatSep
syn match        vimString	contained	+"[^"]*\\$+	skipnl nextgroup=vimStringCont
syn match	vimStringCont	contained	+\(\\\\\|.\)\{-}[^\\]"+

" Substitutions
" =============
syn cluster	vimSubstList	contains=vimPatSep,vimSubstTwoBS,vimSubstRange,vimNotation
syn cluster	vimSubstEndList	contains=vimSubstPat,vimSubstTwoBS,vimNotation
syn region	vimSubst	oneline	 start=":\=s/.\{-}" skip="\\\\\|\\/" end="/"	contains=@vimSubstList nextgroup=vimSubstEnd1
syn region	vimSubstEnd1	contained oneline start="."lc=1	   skip="\\\\\|\\/" end="/"	contains=@vimSubstEndList
syn region	vimSubst	oneline	 start=":\=s?.\{-}" skip="\\\\\|\\?" end="?"	contains=@vimSubstList nextgroup=vimSubstEnd2
syn region	vimSubstEnd2	contained oneline start="."lc=1	   skip="\\\\\|\\?" end="?"	contains=@vimSubstEndList
syn region	vimSubst	oneline	 start=":\=s@.\{-}" skip="\\\\\|\\@" end="@"	contains=@vimSubstList nextgroup=vimSubstEnd3
syn region	vimSubstEnd3	contained oneline start="."lc=1	   skip="\\\\\|\\@" end="@"	contains=@vimSubstEndList
syn region	vimSubstRange	contained oneline start="\["	   skip="\\\\\|\\]" end="]"
syn match	vimSubstPat	contained	"\\\d"
syn match	vimSubstTwoBS	contained	"\\\\"

" Marks, Registers, Addresses, Filters
syn match  vimMark		"[!,:]'[a-zA-Z0-9]"lc=1
syn match  vimMark		"'[a-zA-Z0-9][,!]"me=e-1
syn match  vimMark		"'[<>][,!]"me=e-1
syn match  vimMark		"\<norm\s'[a-zA-Z0-9]"lc=5
syn match  vimMark		"\<normal\s'[a-zA-Z0-9]"lc=7
syn match  vimPlainMark	contained	"'[a-zA-Z0-9]"

syn match  vimRegister		'[^(,;.]"[a-zA-Z0-9\-:.%#*=][^a-zA-Z_"]'lc=1,me=e-1
syn match  vimRegister		'\<norm\s\+"[a-zA-Z0-9]'lc=5
syn match  vimRegister		'\<normal\s\+"[a-zA-Z0-9]'lc=7
syn match  vimPlainRegister	contained	'"[a-zA-Z0-9\-:.%#*=]'

syn match  vimAddress		",\."lc=1
syn match  vimAddress		"[%.]" skipwhite	nextgroup=vimString

syn match  vimFilter	contained	"^!.\{-}\(|\|$\)"	contains=vimSpecFile
syn match  vimFilter	contained	"\A!.\{-}\(|\|$\)"ms=s+1	contains=vimSpecFile

" Complex repeats (:h complex-repeat)
syn match  vimCmplxRepeat		'[^a-zA-Z_/\\]q[0-9a-zA-Z"]'lc=1
syn match  vimCmplxRepeat		'@[0-9a-z".=@:]'

" Set command and associated set-options (vimOptions) with comment
syn region vimSet	matchgroup=vimCommand start="\<set\>" end="|"me=e-1 end="$" matchgroup=vimNotation end="<CR>" keepend contains=vimSetEqual,vimOption,vimErrSetting,vimComment,vimSetString
syn region vimSetEqual	contained	start="="	skip="\\\\\|\\\s" end="[| \t]\|$"me=e-1 contains=vimCtrlChar,vimSetSep,vimNotation
syn region vimSetString	contained	start=+="+hs=s+1	skip=+\\\\\|\\"+  end=+"+	contains=vimCtrlChar
syn match  vimSetSep	contained	"[,:]"

" Let
" ===
" syn keyword vimLet		let	skipwhite nextgroup=vimLetVar
syn match vimVar        contained	"\<\h[a-zA-Z0-9#_]*\>"
syn match vimVar		"\<[bwglstav]:\h[a-zA-Z0-9#_]*\>"
syn keyword	vimLet	let	unl[et]	skipwhite nextgroup=vimVar,vimFuncVar
"syn match   vimLetVar	contained	"\I\i*"

" Autocmd
" =======
syn match   vimAutoEventList	contained	"\(!\s\+\)\=\(\a\+,\)*\a\+"	contains=vimAutoEvent nextgroup=vimAutoCmdSpace
syn match   vimAutoCmdSpace	contained	"\s\+"		nextgroup=vimAutoCmdSfxList
syn match   vimAutoCmdSfxList	contained	"\S*"
syn keyword vimAutoCmd		au[tocmd] do[autocmd] doautoa[ll]	skipwhite nextgroup=vimAutoEventList

" Echo and Execute -- prefer strings!
syn region  vimEcho	oneline	start="\<ec\(ho\=\)\=\>"   skip="\(\\\\\)*\\|" end="$\||" contains=vimCommand,vimString,vimOper
syn region  vimEcho	oneline	start="\<exe\(c\(u\(te\=\)\=\)\=\)\=\>"   skip="\(\\\\\)*\\|" end="$\||" contains=vimCommand,vimString,vimOper

" Syntax
"=======
syn match   vimGroupList	contained	"@\=[^ \t,]*"	contains=vimGroupSpecial,vimPatSep
syn match   vimGroupList	contained	"@\=[^ \t,]*,"	nextgroup=vimGroupList contains=vimGroupSpecial,vimPatSep
syn keyword vimGroupSpecial	contained	ALL	ALLBUT
syn match   vimSynError	contained	"\i\+"
syn match   vimSynError	contained	"\i\+="	nextgroup=vimGroupList
syn match   vimSynContains	contained	"contains="	nextgroup=vimGroupList
syn match   vimSynNextgroup	contained	"nextgroup="	nextgroup=vimGroupList

syn match   vimSyntax	"\<sy\(n\(t\(ax\=\)\=\)\=\)\=\>"		contains=vimCommand skipwhite nextgroup=vimSynType,vimComment
syn match   vimAuSyntax	contained	"\s+sy\(n\(t\(ax\=\)\=\)\=\)\="	contains=vimCommand skipwhite nextgroup=vimSynType,vimComment

" Syntax: case
syn keyword vimSynType	contained	case	skipwhite nextgroup=vimSynCase,vimSynCaseError
syn match   vimSynCaseError	contained	"\i\+"
syn keyword vimSynCase	contained	ignore	match

" Syntax: clear
syn keyword vimSynType	contained	clear	skipwhite nextgroup=vimGroupList

" Syntax: cluster
syn keyword vimSynType		contained	cluster		skipwhite nextgroup=vimClusterName
syn region  vimClusterName	contained	matchgroup=vimGroupName start="\k\+" skip="\\\\\|\\|" end="$\||" contains=vimGroupAdd,vimGroupRem,vimSynContains,vimSynError
syn match   vimGroupAdd	contained	"add="		nextgroup=vimGroupList
syn match   vimGroupRem	contained	"remove="	nextgroup=vimGroupList

" Syntax: include
syn keyword vimSynType	contained	include		skipwhite nextgroup=vimGroupList

" Syntax: keyword
syn keyword vimSynType	contained	keyword		skipwhite nextgroup=vimSynKeyRegion
syn region  vimSynKeyRegion	contained oneline matchgroup=vimGroupName start="\k\+" skip="\\\\\|\\|" end="$\||" contains=vimSynNextgroup,vimSynKeyOpt
syn match   vimSynKeyOpt	contained	"\<\(contained\|transparent\|skipempty\|skipwhite\|skipnl\)\>"

" Syntax: match
syn keyword vimSynType	contained	match	skipwhite nextgroup=vimSynMatchRegion
syn region  vimSynMatchRegion	contained oneline matchgroup=vimGroupName start="\k\+" end="$" contains=vimComment,vimSynContains,vimSynError,vimSynMtchOpt,vimSynNextgroup,vimSynRegPat
syn match   vimSynMtchOpt	contained	"\<\(contained\|excludenl\|transparent\|skipempty\|skipwhite\|skipnl\|display\|fold\)\>"

" Syntax: off and on
syn keyword vimSynType	contained	off	on

" Syntax: region
syn keyword vimSynType	contained	region	skipwhite nextgroup=vimSynRegion
syn region  vimSynRegion	contained oneline matchgroup=vimGroupName start="\k\+" skip="\\\\\|\\|" end="$\||" contains=vimSynContains,vimSynNextgroup,vimSynRegOpt,vimSynReg,vimSynMtchGrp
syn match   vimSynRegOpt	contained	"\<\(contained\|excludenl\|transparent\|skipempty\|skipwhite\|skipnl\|oneline\|keepend\|display\|fold\)\>"
syn match   vimSynReg		contained	"\(start\|skip\|end\)="he=e-1	nextgroup=vimSynRegPat
syn match   vimSynMtchGrp	contained	"matchgroup="	nextgroup=vimGroup,vimHLGroup
syn region  vimSynRegPat	contained oneline	start="!"  skip="\\\\\|\\!"  end="!"  contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange nextgroup=vimSynPatMod
syn region  vimSynRegPat	contained oneline	start="%"  skip="\\\\\|\\-"  end="%"  contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange nextgroup=vimSynPatMod
syn region  vimSynRegPat	contained oneline	start="'"  skip="\\\\\|\\'"  end="'"  contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange nextgroup=vimSynPatMod
syn region  vimSynRegPat	contained oneline	start="+"  skip="\\\\\|\\+"  end="+"  contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange nextgroup=vimSynPatMod
syn region  vimSynRegPat	contained oneline	start="@"  skip="\\\\\|\\@"  end="@"  contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange nextgroup=vimSynPatMod
syn region  vimSynRegPat	contained oneline	start='"'  skip='\\\\\|\\"'  end='"'  contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange nextgroup=vimSynPatMod
syn region  vimSynRegPat	contained oneline	start='/'  skip='\\\\\|\\/'  end='/'  contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange nextgroup=vimSynPatMod
syn region  vimSynRegPat	contained oneline	start=','  skip='\\\\\|\\,'  end=','  contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange nextgroup=vimSynPatMod
syn region  vimSynRegPat	contained oneline	start='\$' skip='\\\\\|\\\$' end='\$' contains=vimPatSep,vimNotPatSep,vimSynPatRange,vimSynNotPatRange nextgroup=vimSynPatMod
syn match   vimSynPatMod	contained	"\(hs\|ms\|me\|hs\|he\|rs\|re\)=[se]\([-+]\d\+\)\="
syn match   vimSynPatMod	contained	"\(hs\|ms\|me\|hs\|he\|rs\|re\)=[se]\([-+]\d\+\)\=," nextgroup=vimSynPatMod
syn match   vimSynPatMod	contained	"lc=\d\+"
syn match   vimSynPatMod	contained	"lc=\d\+," nextgroup=vimSynPatMod
syn region  vimSynPatRange	contained oneline start="\["	skip="\\\\\|\\]"   end="]"
syn match   vimSynNotPatRange	contained	"\\\\\|\\\["

" Syntax: sync
" ============
syn keyword vimSynType	contained	sync	skipwhite	nextgroup=vimSyncC,vimSyncLines,vimSyncMatch,vimSyncError,vimSyncLinecont
syn match   vimSyncError	contained	"\i\+"
syn keyword vimSyncC	contained	ccomment	clear
syn keyword vimSyncMatch	contained	match	skipwhite	nextgroup=vimSyncGroupName
syn keyword vimSyncLinecont	contained	linecont	skipwhite	nextgroup=vimSynRegPat
syn match   vimSyncLines	contained	"\(min\|max\)\=lines="	nextgroup=vimNumber
syn match   vimSyncGroupName	contained	"\k\+"	skipwhite	nextgroup=vimSyncKey
syn match   vimSyncKey	contained	"\<groupthere\|grouphere\>"	skipwhite nextgroup=vimSyncGroup
syn match   vimSyncGroup	contained	"\k\+"	skipwhite	nextgroup=vimSynRegPat,vimSyncNone
syn keyword vimSyncNone	contained	NONE

" Additional IsCommand stuff, here by reasons of precedence
" ====================
syn match vimIsCommand	"<Bar>\s*\a\+"	transparent contains=vimCommand,vimNotation

" Highlighting
" ============
syn match   vimHighlight		"\<hi\(g\(h\(l\(i\(g\(ht\=\)\=\)\=\)\=\)\=\)\=\)\=\>" skipwhite nextgroup=vimHiLink,vimHiClear,vimHiKeyList,vimComment

syn match   vimHiGroup	contained	"\i\+"
syn case ignore
syn keyword vimHiAttrib	contained	none bold inverse italic reverse standout underline
syn keyword vimFgBgAttrib	contained	none bg background fg foreground
syn case match
syn match   vimHiAttribList	contained	"\i\+"	contains=vimHiAttrib
syn match   vimHiAttribList	contained	"\i\+,"he=e-1	contains=vimHiAttrib nextgroup=vimHiAttribList,vimHiAttrib
syn case ignore
syn keyword vimHiCtermColor	contained	black	darkcyan	darkred	lightcyan	lightred
syn keyword vimHiCtermColor	contained	blue	darkgray	gray	lightgray	magenta
syn keyword vimHiCtermColor	contained	brown	darkgreen	green	lightgreen	red
syn keyword vimHiCtermColor	contained	cyan	darkgrey	grey	lightgrey	white
syn keyword vimHiCtermColor	contained	darkBlue	darkmagenta	lightblue	lightmagenta	yellow
syn case match
syn match   vimHiFontname	contained	"[a-zA-Z\-*]\+"
syn match   vimHiGuiFontname	contained	"'[a-zA-Z\-* ]\+'"
syn match   vimHiGuiRgb	contained	"#\x\{6}"
syn match   vimHiCtermError	contained	"[^0-9]\i*"

" Highlighting: hi group key=arg ...
syn cluster vimHiCluster contains=vimHiGroup,vimHiTerm,vimHiCTerm,vimHiStartStop,vimHiCtermFgBg,vimHiGui,vimHiGuiFont,vimHiGuiFgBg,vimHiKeyError
syn region vimHiKeyList	contained oneline start="\i\+" skip="\\\\\|\\|" end="$\||"	contains=@vimHiCluster
syn match  vimHiKeyError	contained	"\i\+="he=e-1
syn match  vimHiTerm	contained	"[tT][eE][rR][mM]="he=e-1			nextgroup=vimHiAttribList
syn match  vimHiStartStop	contained	"\([sS][tT][aA][rR][tT]\|[sS][tT][oO][pP]\)="he=e-1	nextgroup=vimHiTermcap,vimOption
syn match  vimHiCTerm	contained	"[cC][tT][eE][rR][mM]="he=e-1			nextgroup=vimHiAttribList
syn match  vimHiCtermFgBg	contained	"[cC][tT][eE][rR][mM][fFbB][gG]="he=e-1		nextgroup=vimNumber,vimHiCtermColor,vimFgBgAttrib,vimHiCtermError
syn match  vimHiGui	contained	"[gG][uU][iI]="he=e-1			nextgroup=vimHiAttribList
syn match  vimHiGuiFont	contained	"[fF][oO][nN][tT]="he=e-1			nextgroup=vimHiFontname
syn match  vimHiGuiFgBg	contained	"[gG][uU][iI][fFbB][gG]="he=e-1			nextgroup=vimHiGroup,vimHiGuiFontname,vimHiGuiRgb,vimFgBgAttrib
syn match  vimHiTermcap	contained	"\S\+"		contains=vimNotation

" Highlight: clear
syn keyword vimHiClear	contained	clear		nextgroup=vimHiGroup

" Highlight: link
syn region vimHiLink	contained oneline matchgroup=vimCommand start="link" end="$"	contains=vimHiGroup,vimGroup,vimHLGroup

" Angle-Bracket Notation (tnx to Michael Geddes)
" ======================
syn case ignore
syn match vimNotation	"\\<\([scam]-\)\{0,4}\(f\d\{1,2}\|[^ \t:]\|cr\|lf\|linefeed\|return\|del\(ete\)\=\|bs\|backspace\|tab\|esc\|right\|left\|Help\|Undo\|Insert\|Ins\|k\=Home\|k \=End\|kPlus\|kMinus\|kDivide\|kMultiply\|kEnter\|k\=\(page\)\=\(\|down\|up\)\)>" contains=vimBracket
syn match vimNotation	"\\<\([scam2-4]-\)\{0,4}\(right\|left\|middle\)\(mouse\|drag\|release\)>" contains=vimBracket
syn match vimNotation	"\\<\(bslash\|space\|bar\|nop\|nul\|lt\)>"		contains=vimBracket
syn match vimNotation	'\\<C-R>[0-9a-z"%#:.\-=]'he=e-1			contains=vimBracket
syn match vimNotation	'\\<\(line[12]\|count\|bang\|reg\|args\|lt\|[qf]-args\)>'	contains=vimBracket
syn match vimBracket contained	"[\\<>]"
syn case match

" Control Characters
" ==================
syn match vimCtrlChar	"[--]"

" Beginners - Patterns that involve ^
" =========
syn match  vimLineComment	+^[ \t:]*".*$+		contains=@vimCommentGroup,vimCommentString,vimCommentTitle
syn match  vimCommentTitle	'"\s*\u\a*\(\s\+\u\a*\)*:'ms=s+1	contained
syn match  vimContinue	"^\s*\\"

" Highlighting Settings
" ====================
if !exists("did_vim_syntax_inits")
  let did_vim_syntax_inits = 1

  " The default methods for highlighting.  Can be overridden later
  hi link vimAuHighlight	vimHighlight

  hi link vimAddress	vimMark
  hi link vimAutoCmd	vimCommand
  hi link vimAutoCmdOpt	vimOption
  hi link vimAutoSet	vimCommand
  hi link vimBehaveError	vimError
  hi link vimCommentString	vimString
  hi link vimCondHL	vimCommand
  hi link vimElseif	vimCondHL
  hi link vimErrSetting	vimError
  hi link vimFgBgAttrib	vimHiAttrib
  hi link vimFTCmd	vimCommand
  hi link vimFTOption	vimSynType
  hi link vimFTError	vimError
  hi link vimFunctionError	vimError
  hi link vimGroupAdd	vimSynOption
  hi link vimGroupRem	vimSynOption
  hi link vimHLGroup	vimGroup
  hi link vimHiAttribList	vimError
  hi link vimHiCTerm	vimHiTerm
  hi link vimHiCtermError	vimError
  hi link vimHiCtermFgBg	vimHiTerm
  hi link vimHiGroup	vimGroupName
  hi link vimHiGui	vimHiTerm
  hi link vimHiGuiFgBg	vimHiTerm
  hi link vimHiGuiFont	vimHiTerm
  hi link vimHiGuiRgb	vimNumber
  hi link vimHiKeyError	vimError
  hi link vimHiStartStop	vimHiTerm
  hi link vimHighlight	vimCommand
  hi link vimKeyCode	vimSpecFile
  hi link vimKeyCodeError	vimError
  hi link vimLet		vimCommand
  hi link vimLineComment	vimComment
  hi link vimNotFunc	vimCommand
  hi link vimNotPatSep	vimString
  hi link vimPlainMark	vimMark
  hi link vimPlainRegister	vimRegister
  hi link vimSetString	vimString
  hi link vimSpecFileMod	vimSpecFile
  hi link vimStringCont	vimString
  hi link vimSynCaseError	vimError
  hi link vimSynContains	vimSynOption
  hi link vimSynKeyOpt	vimSynOption
  hi link vimSynMtchGrp	vimSynOption
  hi link vimSynMtchOpt	vimSynOption
  hi link vimSynNextgroup	vimSynOption
  hi link vimSynNotPatRange	vimSynRegPat
  hi link vimSynPatRange	vimString
  hi link vimSynRegOpt	vimSynOption
  hi link vimSynRegPat	vimString
  hi link vimSyntax	vimCommand
  hi link vimSynType	vimSpecial
  hi link vimSyncGroup	vimGroupName
  hi link vimSyncGroupName	vimGroupName
  hi link vimUserAttrb	vimSpecial
  hi link vimUserAttrbCmplt	vimSpecial
  hi link vimUserAttrbKey	vimOption
  hi link vimUserCmd	vimCommand

  hi link vimVar   Identifier

  hi link vimAutoEvent	Type
  hi link vimBracket	Delimiter
  hi link vimCmplxRepeat	SpecialChar
  hi link vimCommand	Statement
  hi link vimComment	Comment
  hi link vimCommentTitle	PreProc
  hi link vimContinue	Special
  hi link vimCtrlChar	SpecialChar
  hi link vimEnvvar	PreProc
  hi link vimError	Error
  hi link vimFuncName	Function
  hi link vimFuncVar	Identifier
  hi link vimGroup	Type
  hi link vimGroupSpecial	Special
  hi link vimHLMod	PreProc
  hi link vimHiAttrib	PreProc
  hi link vimHiTerm	Type
  hi link vimKeyword	Statement
  hi link vimMark	Number
  hi link vimNotation	Special
  hi link vimNumber	Number
  hi link vimOper	Operator
  hi link vimOption	PreProc
  hi link vimPatSep	SpecialChar
  hi link vimPattern	Type
  hi link vimRegister	SpecialChar
  hi link vimSetSep	Statement
  hi link vimSpecFile	Identifier
  hi link vimSpecial	Type
  hi link vimStatement	Statement
  hi link vimString	String
  hi link vimSubstPat	SpecialChar
  hi link vimSynCase	Type
  hi link vimSynCaseError	Error
  hi link vimSynError	Error
  hi link vimSynOption	Special
  hi link vimSynReg	Type
  hi link vimSyncC	Type
  hi link vimSyncError	Error
  hi link vimSyncKey	Type
  hi link vimSyncNone	Type
  hi link vimTodo	Todo
endif

let b:current_syntax = "vim"

" vim: ts=17
