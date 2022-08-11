class Partner {
  int? partnerid;
  String? partnerfirstname;
  String? partnerlastname;
  String? partneremail;
  String? partnermobile;
  String? wakeelphone;
  String? partnercountry;
  String? partnercity;
  String? partnerregion;
  String? partneraddress;
  String? partnerwork;
  String? partnerscientificdegree;
  String? certificatedetails;
  String? financialstatus;
  String? monthlyincome;
  String? partnergender;
  String? partnerbirthday;
  int? partnerheight;
  int? partnerweight;
  String? partnereyescolor;
  String? partnerhaircolor;
  String? partnerhairstyle;
  String? partnerskincolor;
  String? partnernationality;
  String? partnerskills;
  String? partnerhobbies;
  String? partnerfamilyinfo;
  String? partnerreligion;
  String? mathhab;
  String? socialstatus;
  String? childrennum;
  String? childrenstatus;
  String? partnerphoto;
  String? partnertoken;
  String? partnerloginmac;
  String? partnerverificationcode;
  String? partnersubscriptiontype;
  String? username;
  String? password;
  String? marriagetype;
  int? isActive;
  int? isVip;
  int? isDisabledpartner;
  int? isOrphan;
  int? isQurankeeper;
  int? khattabaid;
  String? hasExtra;

  Partner(
      {this.partnerid,
        this.partnerfirstname,
        this.partnerlastname,
        this.partneremail,
        this.partnermobile,
        this.wakeelphone,
        this.partnercountry,
        this.partnercity,
        this.partnerregion,
        this.partneraddress,
        this.partnerwork,
        this.partnerscientificdegree,
        this.certificatedetails,
        this.financialstatus,
        this.monthlyincome,
        this.partnergender,
        this.partnerbirthday,
        this.partnerheight,
        this.partnerweight,
        this.partnereyescolor,
        this.partnerhaircolor,
        this.partnerhairstyle,
        this.partnerskincolor,
        this.partnernationality,
        this.partnerskills,
        this.partnerhobbies,
        this.partnerfamilyinfo,
        this.partnerreligion,
        this.mathhab,
        this.socialstatus,
        this.childrennum,
        this.childrenstatus,
        this.partnerphoto,
        this.partnertoken,
        this.partnerloginmac,
        this.partnerverificationcode,
        this.partnersubscriptiontype,
        this.username,
        this.password,
        this.marriagetype,
        this.isActive,
        this.isVip,
        this.isDisabledpartner,
        this.isOrphan,
        this.isQurankeeper,
        this.khattabaid,
        this.hasExtra});

  Partner.fromJson(Map<String, dynamic> json) {
    partnerid = json['partnerid'];
    partnerfirstname = json['partnerfirstname'];
    partnerlastname = json['partnerlastname'];
    partneremail = json['partneremail'];
    partnermobile = json['partnermobile'];
    wakeelphone = json['wakeelphone'];
    partnercountry = json['partnercountry'];
    partnercity = json['partnercity'];
    partnerregion = json['partnerregion'];
    partneraddress = json['partneraddress'];
    partnerwork = json['partnerwork'];
    partnerscientificdegree = json['partnerscientificdegree'];
    certificatedetails = json['certificatedetails'];
    financialstatus = json['financialstatus'];
    monthlyincome = json['monthlyincome'];
    partnergender = json['partnergender'];
    partnerbirthday = json['partnerbirthday'];
    partnerheight = json['partnerheight'];
    partnerweight = json['partnerweight'];
    partnereyescolor = json['partnereyescolor'];
    partnerhaircolor = json['partnerhaircolor'];
    partnerhairstyle = json['partnerhairstyle'];
    partnerskincolor = json['partnerskincolor'];
    partnernationality = json['partnernationality'];
    partnerskills = json['partnerskills'];
    partnerhobbies = json['partnerhobbies'];
    partnerfamilyinfo = json['partnerfamilyinfo'];
    partnerreligion = json['partnerreligion'];
    mathhab = json['mathhab'];
    socialstatus = json['socialstatus'];
    childrennum = json['childrennum'];
    childrenstatus = json['childrenstatus'];
    partnerphoto = json['partnerphoto'];
    partnertoken = json['partnertoken'];
    partnerloginmac = json['partnerloginmac'];
    partnerverificationcode = json['partnerverificationcode'];
    partnersubscriptiontype = json['partnersubscriptiontype'];
    username = json['username'];
    password = json['password'];
    marriagetype = json['marriagetype'];
    isActive = json['is_active'];
    isVip = json['is_vip'];
    isDisabledpartner = json['is_disabledpartner'];
    isOrphan = json['is_orphan'];
    isQurankeeper = json['is_qurankeeper'];
    khattabaid = json['khattabaid'];
    hasExtra = json['has_extra'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['partnerid'] = this.partnerid;
    data['partnerfirstname'] = this.partnerfirstname;
    data['partnerlastname'] = this.partnerlastname;
    data['partneremail'] = this.partneremail;
    data['partnermobile'] = this.partnermobile;
    data['wakeelphone'] = this.wakeelphone;
    data['partnercountry'] = this.partnercountry;
    data['partnercity'] = this.partnercity;
    data['partnerregion'] = this.partnerregion;
    data['partneraddress'] = this.partneraddress;
    data['partnerwork'] = this.partnerwork;
    data['partnerscientificdegree'] = this.partnerscientificdegree;
    data['certificatedetails'] = this.certificatedetails;
    data['financialstatus'] = this.financialstatus;
    data['monthlyincome'] = this.monthlyincome;
    data['partnergender'] = this.partnergender;
    data['partnerbirthday'] = this.partnerbirthday;
    data['partnerheight'] = this.partnerheight;
    data['partnerweight'] = this.partnerweight;
    data['partnereyescolor'] = this.partnereyescolor;
    data['partnerhaircolor'] = this.partnerhaircolor;
    data['partnerhairstyle'] = this.partnerhairstyle;
    data['partnerskincolor'] = this.partnerskincolor;
    data['partnernationality'] = this.partnernationality;
    data['partnerskills'] = this.partnerskills;
    data['partnerhobbies'] = this.partnerhobbies;
    data['partnerfamilyinfo'] = this.partnerfamilyinfo;
    data['partnerreligion'] = this.partnerreligion;
    data['mathhab'] = this.mathhab;
    data['socialstatus'] = this.socialstatus;
    data['childrennum'] = this.childrennum;
    data['childrenstatus'] = this.childrenstatus;
    data['partnerphoto'] = this.partnerphoto;
    data['partnertoken'] = this.partnertoken;
    data['partnerloginmac'] = this.partnerloginmac;
    data['partnerverificationcode'] = this.partnerverificationcode;
    data['partnersubscriptiontype'] = this.partnersubscriptiontype;
    data['username'] = this.username;
    data['password'] = this.password;
    data['marriagetype'] = this.marriagetype;
    data['is_active'] = this.isActive;
    data['is_vip'] = this.isVip;
    data['is_disabledpartner'] = this.isDisabledpartner;
    data['is_orphan'] = this.isOrphan;
    data['is_qurankeeper'] = this.isQurankeeper;
    data['khattabaid'] = this.khattabaid;
    data['has_extra'] = this.hasExtra;
    return data;
  }
}
