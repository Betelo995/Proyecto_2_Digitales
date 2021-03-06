/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

(* top =  1  *)
(* src = "contador_synth.v:1" *)
module contador_synth(valid_cont, data_cont, cont, data_ant, req, clk, idx, push, reset, data_in);
  (* src = "contador_synth.v:15" *)
  wire [7:0] _000_;
  (* src = "contador_synth.v:15" *)
  wire [7:0] _001_;
  (* src = "contador_synth.v:15" *)
  wire [7:0] _002_;
  (* src = "contador_synth.v:15" *)
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  wire _172_;
  wire _173_;
  wire _174_;
  wire _175_;
  wire _176_;
  wire _177_;
  (* src = "contador_synth.v:9" *)
  input clk;
  (* src = "contador_synth.v:5" *)
  output [7:0] cont;
  (* src = "contador_synth.v:6" *)
  output [7:0] data_ant;
  (* src = "contador_synth.v:4" *)
  output [7:0] data_cont;
  (* src = "contador_synth.v:13" *)
  input [7:0] data_in;
  (* src = "contador_synth.v:10" *)
  input idx;
  (* src = "contador_synth.v:11" *)
  input push;
  (* src = "contador_synth.v:8" *)
  input req;
  (* src = "contador_synth.v:12" *)
  input reset;
  (* src = "contador_synth.v:3" *)
  output valid_cont;
  NOT _178_ (
    .A(data_in[0]),
    .Y(_147_)
  );
  NOT _179_ (
    .A(push),
    .Y(_148_)
  );
  NOR _180_ (
    .A(_148_),
    .B(_147_),
    .Y(_149_)
  );
  NOT _181_ (
    .A(data_ant[0]),
    .Y(_150_)
  );
  NOR _182_ (
    .A(push),
    .B(_150_),
    .Y(_151_)
  );
  NOR _183_ (
    .A(_151_),
    .B(_149_),
    .Y(_152_)
  );
  NOR _184_ (
    .A(_152_),
    .B(reset),
    .Y(_001_[0])
  );
  NOT _185_ (
    .A(data_in[1]),
    .Y(_153_)
  );
  NOR _186_ (
    .A(_153_),
    .B(_148_),
    .Y(_154_)
  );
  NOT _187_ (
    .A(data_ant[1]),
    .Y(_155_)
  );
  NOR _188_ (
    .A(_155_),
    .B(push),
    .Y(_156_)
  );
  NOR _189_ (
    .A(_156_),
    .B(_154_),
    .Y(_157_)
  );
  NOR _190_ (
    .A(_157_),
    .B(reset),
    .Y(_001_[1])
  );
  NOT _191_ (
    .A(data_in[2]),
    .Y(_158_)
  );
  NOR _192_ (
    .A(_158_),
    .B(_148_),
    .Y(_159_)
  );
  NOT _193_ (
    .A(data_ant[2]),
    .Y(_160_)
  );
  NOR _194_ (
    .A(_160_),
    .B(push),
    .Y(_161_)
  );
  NOR _195_ (
    .A(_161_),
    .B(_159_),
    .Y(_162_)
  );
  NOR _196_ (
    .A(_162_),
    .B(reset),
    .Y(_001_[2])
  );
  NOT _197_ (
    .A(data_in[3]),
    .Y(_163_)
  );
  NOR _198_ (
    .A(_163_),
    .B(_148_),
    .Y(_164_)
  );
  NOT _199_ (
    .A(data_ant[3]),
    .Y(_165_)
  );
  NOR _200_ (
    .A(_165_),
    .B(push),
    .Y(_166_)
  );
  NOR _201_ (
    .A(_166_),
    .B(_164_),
    .Y(_167_)
  );
  NOR _202_ (
    .A(_167_),
    .B(reset),
    .Y(_001_[3])
  );
  NOT _203_ (
    .A(data_in[4]),
    .Y(_168_)
  );
  NOR _204_ (
    .A(_168_),
    .B(_148_),
    .Y(_169_)
  );
  NOT _205_ (
    .A(data_ant[4]),
    .Y(_170_)
  );
  NOR _206_ (
    .A(_170_),
    .B(push),
    .Y(_171_)
  );
  NOR _207_ (
    .A(_171_),
    .B(_169_),
    .Y(_172_)
  );
  NOR _208_ (
    .A(_172_),
    .B(reset),
    .Y(_001_[4])
  );
  NOT _209_ (
    .A(data_in[5]),
    .Y(_173_)
  );
  NOR _210_ (
    .A(_173_),
    .B(_148_),
    .Y(_174_)
  );
  NOT _211_ (
    .A(data_ant[5]),
    .Y(_175_)
  );
  NOR _212_ (
    .A(_175_),
    .B(push),
    .Y(_176_)
  );
  NOR _213_ (
    .A(_176_),
    .B(_174_),
    .Y(_177_)
  );
  NOR _214_ (
    .A(_177_),
    .B(reset),
    .Y(_001_[5])
  );
  NOT _215_ (
    .A(data_in[6]),
    .Y(_004_)
  );
  NOR _216_ (
    .A(_004_),
    .B(_148_),
    .Y(_005_)
  );
  NOT _217_ (
    .A(data_ant[6]),
    .Y(_006_)
  );
  NOR _218_ (
    .A(_006_),
    .B(push),
    .Y(_007_)
  );
  NOR _219_ (
    .A(_007_),
    .B(_005_),
    .Y(_008_)
  );
  NOR _220_ (
    .A(_008_),
    .B(reset),
    .Y(_001_[6])
  );
  NOT _221_ (
    .A(data_in[7]),
    .Y(_009_)
  );
  NOR _222_ (
    .A(_009_),
    .B(_148_),
    .Y(_010_)
  );
  NOT _223_ (
    .A(data_ant[7]),
    .Y(_011_)
  );
  NOR _224_ (
    .A(_011_),
    .B(push),
    .Y(_012_)
  );
  NOR _225_ (
    .A(_012_),
    .B(_010_),
    .Y(_013_)
  );
  NOR _226_ (
    .A(_013_),
    .B(reset),
    .Y(_001_[7])
  );
  NOT _227_ (
    .A(cont[0]),
    .Y(_014_)
  );
  NOR _228_ (
    .A(data_in[2]),
    .B(_160_),
    .Y(_015_)
  );
  NOR _229_ (
    .A(_173_),
    .B(data_ant[5]),
    .Y(_016_)
  );
  NOR _230_ (
    .A(_016_),
    .B(_015_),
    .Y(_017_)
  );
  NOR _231_ (
    .A(data_in[4]),
    .B(_170_),
    .Y(_018_)
  );
  NOR _232_ (
    .A(_168_),
    .B(data_ant[4]),
    .Y(_019_)
  );
  NOR _233_ (
    .A(_019_),
    .B(_018_),
    .Y(_020_)
  );
  NAND _234_ (
    .A(_020_),
    .B(_017_),
    .Y(_021_)
  );
  NOR _235_ (
    .A(_158_),
    .B(data_ant[2]),
    .Y(_022_)
  );
  NOR _236_ (
    .A(_009_),
    .B(data_ant[7]),
    .Y(_023_)
  );
  NOR _237_ (
    .A(_023_),
    .B(_022_),
    .Y(_024_)
  );
  NOR _238_ (
    .A(_147_),
    .B(data_ant[0]),
    .Y(_025_)
  );
  NOR _239_ (
    .A(data_in[0]),
    .B(_150_),
    .Y(_026_)
  );
  NOR _240_ (
    .A(_026_),
    .B(_025_),
    .Y(_027_)
  );
  NAND _241_ (
    .A(_027_),
    .B(_024_),
    .Y(_028_)
  );
  NOR _242_ (
    .A(_028_),
    .B(_021_),
    .Y(_029_)
  );
  NOR _243_ (
    .A(_004_),
    .B(data_ant[6]),
    .Y(_030_)
  );
  NOR _244_ (
    .A(data_in[6]),
    .B(_006_),
    .Y(_031_)
  );
  NOR _245_ (
    .A(_031_),
    .B(_030_),
    .Y(_032_)
  );
  NOR _246_ (
    .A(data_in[7]),
    .B(_011_),
    .Y(_033_)
  );
  NOR _247_ (
    .A(data_in[5]),
    .B(_175_),
    .Y(_034_)
  );
  NOR _248_ (
    .A(_034_),
    .B(_033_),
    .Y(_035_)
  );
  NAND _249_ (
    .A(_035_),
    .B(_032_),
    .Y(_036_)
  );
  NOR _250_ (
    .A(data_in[1]),
    .B(_155_),
    .Y(_037_)
  );
  NOR _251_ (
    .A(_153_),
    .B(data_ant[1]),
    .Y(_038_)
  );
  NOR _252_ (
    .A(_038_),
    .B(_037_),
    .Y(_039_)
  );
  NOR _253_ (
    .A(data_in[3]),
    .B(_165_),
    .Y(_040_)
  );
  NOR _254_ (
    .A(_163_),
    .B(data_ant[3]),
    .Y(_041_)
  );
  NOR _255_ (
    .A(_041_),
    .B(_040_),
    .Y(_042_)
  );
  NAND _256_ (
    .A(_042_),
    .B(_039_),
    .Y(_043_)
  );
  NOR _257_ (
    .A(_043_),
    .B(_036_),
    .Y(_044_)
  );
  NAND _258_ (
    .A(_044_),
    .B(_029_),
    .Y(_045_)
  );
  NAND _259_ (
    .A(_045_),
    .B(push),
    .Y(_046_)
  );
  NOR _260_ (
    .A(_046_),
    .B(_014_),
    .Y(_047_)
  );
  NOT _261_ (
    .A(reset),
    .Y(_048_)
  );
  NAND _262_ (
    .A(_046_),
    .B(_014_),
    .Y(_049_)
  );
  NAND _263_ (
    .A(_049_),
    .B(_048_),
    .Y(_050_)
  );
  NOR _264_ (
    .A(_050_),
    .B(_047_),
    .Y(_000_[0])
  );
  NOT _265_ (
    .A(cont[1]),
    .Y(_051_)
  );
  NAND _266_ (
    .A(_158_),
    .B(data_ant[2]),
    .Y(_052_)
  );
  NAND _267_ (
    .A(data_in[5]),
    .B(_175_),
    .Y(_053_)
  );
  NAND _268_ (
    .A(_053_),
    .B(_052_),
    .Y(_054_)
  );
  NAND _269_ (
    .A(_168_),
    .B(data_ant[4]),
    .Y(_055_)
  );
  NAND _270_ (
    .A(data_in[4]),
    .B(_170_),
    .Y(_056_)
  );
  NAND _271_ (
    .A(_056_),
    .B(_055_),
    .Y(_057_)
  );
  NOR _272_ (
    .A(_057_),
    .B(_054_),
    .Y(_058_)
  );
  NAND _273_ (
    .A(data_in[2]),
    .B(_160_),
    .Y(_059_)
  );
  NAND _274_ (
    .A(data_in[7]),
    .B(_011_),
    .Y(_060_)
  );
  NAND _275_ (
    .A(_060_),
    .B(_059_),
    .Y(_061_)
  );
  NAND _276_ (
    .A(data_in[0]),
    .B(_150_),
    .Y(_062_)
  );
  NAND _277_ (
    .A(_147_),
    .B(data_ant[0]),
    .Y(_063_)
  );
  NAND _278_ (
    .A(_063_),
    .B(_062_),
    .Y(_064_)
  );
  NOR _279_ (
    .A(_064_),
    .B(_061_),
    .Y(_065_)
  );
  NAND _280_ (
    .A(_065_),
    .B(_058_),
    .Y(_066_)
  );
  NAND _281_ (
    .A(data_in[6]),
    .B(_006_),
    .Y(_067_)
  );
  NAND _282_ (
    .A(_004_),
    .B(data_ant[6]),
    .Y(_068_)
  );
  NAND _283_ (
    .A(_068_),
    .B(_067_),
    .Y(_069_)
  );
  NAND _284_ (
    .A(_009_),
    .B(data_ant[7]),
    .Y(_070_)
  );
  NAND _285_ (
    .A(_173_),
    .B(data_ant[5]),
    .Y(_071_)
  );
  NAND _286_ (
    .A(_071_),
    .B(_070_),
    .Y(_072_)
  );
  NOR _287_ (
    .A(_072_),
    .B(_069_),
    .Y(_073_)
  );
  NAND _288_ (
    .A(_153_),
    .B(data_ant[1]),
    .Y(_074_)
  );
  NAND _289_ (
    .A(data_in[1]),
    .B(_155_),
    .Y(_075_)
  );
  NAND _290_ (
    .A(_075_),
    .B(_074_),
    .Y(_076_)
  );
  NAND _291_ (
    .A(_163_),
    .B(data_ant[3]),
    .Y(_077_)
  );
  NAND _292_ (
    .A(data_in[3]),
    .B(_165_),
    .Y(_078_)
  );
  NAND _293_ (
    .A(_078_),
    .B(_077_),
    .Y(_079_)
  );
  NOR _294_ (
    .A(_079_),
    .B(_076_),
    .Y(_080_)
  );
  NAND _295_ (
    .A(_080_),
    .B(_073_),
    .Y(_081_)
  );
  NOR _296_ (
    .A(_081_),
    .B(_066_),
    .Y(_082_)
  );
  NOR _297_ (
    .A(_082_),
    .B(_148_),
    .Y(_083_)
  );
  NAND _298_ (
    .A(_083_),
    .B(cont[0]),
    .Y(_084_)
  );
  NOR _299_ (
    .A(_084_),
    .B(_051_),
    .Y(_085_)
  );
  NAND _300_ (
    .A(_084_),
    .B(_051_),
    .Y(_086_)
  );
  NAND _301_ (
    .A(_086_),
    .B(_048_),
    .Y(_087_)
  );
  NOR _302_ (
    .A(_087_),
    .B(_085_),
    .Y(_000_[1])
  );
  NOT _303_ (
    .A(cont[2]),
    .Y(_088_)
  );
  NAND _304_ (
    .A(_047_),
    .B(cont[1]),
    .Y(_089_)
  );
  NOR _305_ (
    .A(_089_),
    .B(_088_),
    .Y(_090_)
  );
  NAND _306_ (
    .A(_089_),
    .B(_088_),
    .Y(_091_)
  );
  NAND _307_ (
    .A(_091_),
    .B(_048_),
    .Y(_092_)
  );
  NOR _308_ (
    .A(_092_),
    .B(_090_),
    .Y(_000_[2])
  );
  NOT _309_ (
    .A(cont[3]),
    .Y(_093_)
  );
  NAND _310_ (
    .A(_085_),
    .B(cont[2]),
    .Y(_094_)
  );
  NOR _311_ (
    .A(_094_),
    .B(_093_),
    .Y(_095_)
  );
  NAND _312_ (
    .A(_094_),
    .B(_093_),
    .Y(_096_)
  );
  NAND _313_ (
    .A(_096_),
    .B(_048_),
    .Y(_097_)
  );
  NOR _314_ (
    .A(_097_),
    .B(_095_),
    .Y(_000_[3])
  );
  NOT _315_ (
    .A(cont[4]),
    .Y(_098_)
  );
  NAND _316_ (
    .A(_090_),
    .B(cont[3]),
    .Y(_099_)
  );
  NOR _317_ (
    .A(_099_),
    .B(_098_),
    .Y(_100_)
  );
  NAND _318_ (
    .A(_099_),
    .B(_098_),
    .Y(_101_)
  );
  NAND _319_ (
    .A(_101_),
    .B(_048_),
    .Y(_102_)
  );
  NOR _320_ (
    .A(_102_),
    .B(_100_),
    .Y(_000_[4])
  );
  NOT _321_ (
    .A(cont[5]),
    .Y(_103_)
  );
  NAND _322_ (
    .A(_095_),
    .B(cont[4]),
    .Y(_104_)
  );
  NOR _323_ (
    .A(_104_),
    .B(_103_),
    .Y(_105_)
  );
  NAND _324_ (
    .A(_104_),
    .B(_103_),
    .Y(_106_)
  );
  NAND _325_ (
    .A(_106_),
    .B(_048_),
    .Y(_107_)
  );
  NOR _326_ (
    .A(_107_),
    .B(_105_),
    .Y(_000_[5])
  );
  NOT _327_ (
    .A(cont[6]),
    .Y(_108_)
  );
  NAND _328_ (
    .A(_100_),
    .B(cont[5]),
    .Y(_109_)
  );
  NOR _329_ (
    .A(_109_),
    .B(_108_),
    .Y(_110_)
  );
  NAND _330_ (
    .A(_109_),
    .B(_108_),
    .Y(_111_)
  );
  NAND _331_ (
    .A(_111_),
    .B(_048_),
    .Y(_112_)
  );
  NOR _332_ (
    .A(_112_),
    .B(_110_),
    .Y(_000_[6])
  );
  NOT _333_ (
    .A(cont[7]),
    .Y(_113_)
  );
  NOR _334_ (
    .A(_110_),
    .B(_113_),
    .Y(_114_)
  );
  NAND _335_ (
    .A(_105_),
    .B(cont[6]),
    .Y(_115_)
  );
  NOR _336_ (
    .A(_115_),
    .B(cont[7]),
    .Y(_116_)
  );
  NOR _337_ (
    .A(_116_),
    .B(_114_),
    .Y(_117_)
  );
  NOR _338_ (
    .A(_117_),
    .B(reset),
    .Y(_000_[7])
  );
  NAND _339_ (
    .A(idx),
    .B(req),
    .Y(_118_)
  );
  NOT _340_ (
    .A(_118_),
    .Y(_119_)
  );
  NOR _341_ (
    .A(_119_),
    .B(data_cont[0]),
    .Y(_120_)
  );
  NAND _342_ (
    .A(_119_),
    .B(_014_),
    .Y(_121_)
  );
  NAND _343_ (
    .A(_121_),
    .B(_048_),
    .Y(_122_)
  );
  NOR _344_ (
    .A(_122_),
    .B(_120_),
    .Y(_002_[0])
  );
  NOR _345_ (
    .A(_119_),
    .B(data_cont[1]),
    .Y(_123_)
  );
  NAND _346_ (
    .A(_119_),
    .B(_051_),
    .Y(_124_)
  );
  NAND _347_ (
    .A(_124_),
    .B(_048_),
    .Y(_125_)
  );
  NOR _348_ (
    .A(_125_),
    .B(_123_),
    .Y(_002_[1])
  );
  NOR _349_ (
    .A(_119_),
    .B(data_cont[2]),
    .Y(_126_)
  );
  NAND _350_ (
    .A(_119_),
    .B(_088_),
    .Y(_127_)
  );
  NAND _351_ (
    .A(_127_),
    .B(_048_),
    .Y(_128_)
  );
  NOR _352_ (
    .A(_128_),
    .B(_126_),
    .Y(_002_[2])
  );
  NOR _353_ (
    .A(_119_),
    .B(data_cont[3]),
    .Y(_129_)
  );
  NAND _354_ (
    .A(_119_),
    .B(_093_),
    .Y(_130_)
  );
  NAND _355_ (
    .A(_130_),
    .B(_048_),
    .Y(_131_)
  );
  NOR _356_ (
    .A(_131_),
    .B(_129_),
    .Y(_002_[3])
  );
  NOR _357_ (
    .A(_119_),
    .B(data_cont[4]),
    .Y(_132_)
  );
  NAND _358_ (
    .A(_119_),
    .B(_098_),
    .Y(_133_)
  );
  NAND _359_ (
    .A(_133_),
    .B(_048_),
    .Y(_134_)
  );
  NOR _360_ (
    .A(_134_),
    .B(_132_),
    .Y(_002_[4])
  );
  NOR _361_ (
    .A(_119_),
    .B(data_cont[5]),
    .Y(_135_)
  );
  NAND _362_ (
    .A(_119_),
    .B(_103_),
    .Y(_136_)
  );
  NAND _363_ (
    .A(_136_),
    .B(_048_),
    .Y(_137_)
  );
  NOR _364_ (
    .A(_137_),
    .B(_135_),
    .Y(_002_[5])
  );
  NOR _365_ (
    .A(_119_),
    .B(data_cont[6]),
    .Y(_138_)
  );
  NAND _366_ (
    .A(_119_),
    .B(_108_),
    .Y(_139_)
  );
  NAND _367_ (
    .A(_139_),
    .B(_048_),
    .Y(_140_)
  );
  NOR _368_ (
    .A(_140_),
    .B(_138_),
    .Y(_002_[6])
  );
  NOR _369_ (
    .A(_119_),
    .B(data_cont[7]),
    .Y(_141_)
  );
  NAND _370_ (
    .A(_119_),
    .B(_113_),
    .Y(_142_)
  );
  NAND _371_ (
    .A(_142_),
    .B(_048_),
    .Y(_143_)
  );
  NOR _372_ (
    .A(_143_),
    .B(_141_),
    .Y(_002_[7])
  );
  NOT _373_ (
    .A(valid_cont),
    .Y(_144_)
  );
  NOR _374_ (
    .A(_144_),
    .B(push),
    .Y(_145_)
  );
  NOR _375_ (
    .A(_145_),
    .B(_119_),
    .Y(_146_)
  );
  NOR _376_ (
    .A(_146_),
    .B(reset),
    .Y(_003_)
  );
  DFF _377_ (
    .C(clk),
    .D(_003_),
    .Q(valid_cont)
  );
  DFF _378_ (
    .C(clk),
    .D(_002_[0]),
    .Q(data_cont[0])
  );
  DFF _379_ (
    .C(clk),
    .D(_002_[1]),
    .Q(data_cont[1])
  );
  DFF _380_ (
    .C(clk),
    .D(_002_[2]),
    .Q(data_cont[2])
  );
  DFF _381_ (
    .C(clk),
    .D(_002_[3]),
    .Q(data_cont[3])
  );
  DFF _382_ (
    .C(clk),
    .D(_002_[4]),
    .Q(data_cont[4])
  );
  DFF _383_ (
    .C(clk),
    .D(_002_[5]),
    .Q(data_cont[5])
  );
  DFF _384_ (
    .C(clk),
    .D(_002_[6]),
    .Q(data_cont[6])
  );
  DFF _385_ (
    .C(clk),
    .D(_002_[7]),
    .Q(data_cont[7])
  );
  DFF _386_ (
    .C(clk),
    .D(_000_[0]),
    .Q(cont[0])
  );
  DFF _387_ (
    .C(clk),
    .D(_000_[1]),
    .Q(cont[1])
  );
  DFF _388_ (
    .C(clk),
    .D(_000_[2]),
    .Q(cont[2])
  );
  DFF _389_ (
    .C(clk),
    .D(_000_[3]),
    .Q(cont[3])
  );
  DFF _390_ (
    .C(clk),
    .D(_000_[4]),
    .Q(cont[4])
  );
  DFF _391_ (
    .C(clk),
    .D(_000_[5]),
    .Q(cont[5])
  );
  DFF _392_ (
    .C(clk),
    .D(_000_[6]),
    .Q(cont[6])
  );
  DFF _393_ (
    .C(clk),
    .D(_000_[7]),
    .Q(cont[7])
  );
  DFF _394_ (
    .C(clk),
    .D(_001_[0]),
    .Q(data_ant[0])
  );
  DFF _395_ (
    .C(clk),
    .D(_001_[1]),
    .Q(data_ant[1])
  );
  DFF _396_ (
    .C(clk),
    .D(_001_[2]),
    .Q(data_ant[2])
  );
  DFF _397_ (
    .C(clk),
    .D(_001_[3]),
    .Q(data_ant[3])
  );
  DFF _398_ (
    .C(clk),
    .D(_001_[4]),
    .Q(data_ant[4])
  );
  DFF _399_ (
    .C(clk),
    .D(_001_[5]),
    .Q(data_ant[5])
  );
  DFF _400_ (
    .C(clk),
    .D(_001_[6]),
    .Q(data_ant[6])
  );
  DFF _401_ (
    .C(clk),
    .D(_001_[7]),
    .Q(data_ant[7])
  );
endmodule
