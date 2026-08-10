.class public Lcom/faceunity/pta_art/constant/ResourceJson;
.super Ljava/lang/Object;
.source "ResourceJson.java"


# static fields
.field private static final AREA_TYPE:[Ljava/lang/String;

.field private static final BODY_HEAD_TYPE:[Ljava/lang/String;

.field private static final BUNDLE_PATH:[Ljava/lang/String;

.field private static final EXPRESSION_TYPE:[Ljava/lang/String;

.field private static final MUTEX_NAME:[Ljava/lang/String;

.field private static final RESOURCE_BUNDLE_PATH:[Ljava/lang/String;

.field private static final RESOURCE_PATH:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TYPE:[[Ljava/lang/String;

.field private static final TYPE_ALL:[Ljava/lang/String;

.field private static mCKDoodleGlasses:Lcom/faceunity/pta_art/entity/BundleRes;

.field public static sARCoreFFAvatarNum:I

.field private static sAreaType:I

.field private static sAvatarPTAS:[Lcom/faceunity/pta_art/entity/AvatarPTA;

.field private static sBundleName:Ljava/lang/String;

.field private static sCKDoodle:Ljava/lang/String;

.field private static sCountryCode:Ljava/lang/String;

.field private static sExpressionCommonSoundEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sExpressionSoundEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFigureList:[I

.field private static sGender:I

.field public static sIsARCoreAddFFAvatar:Z

.field private static sIsInited:I

.field public static sIsSupportFFAvatar:Z

.field private static sNameAllList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sNewExpressionCommonSoundEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNewNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sResource2Map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sResourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$_KlGGZa97lQ8QA22wkWPtQE7TLc(I)[Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->lambda$getAllBundleRes$0(I)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 27

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/faceunity/pta_art/constant/ResourceJson;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 59
    new-instance v0, Lcom/faceunity/pta_art/entity/BundleRes;

    sget v1, Lcom/transsion/camera/ar_sdk/R$drawable;->peishi_n_021:I

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "new/peishi/peishi_n_021.bundle"

    invoke-direct {v0, v5, v1, v3, v4}, Lcom/faceunity/pta_art/entity/BundleRes;-><init>(Ljava/lang/String;I[Ljava/lang/Integer;Z)V

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->mCKDoodleGlasses:Lcom/faceunity/pta_art/entity/BundleRes;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sResourceMap:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sResource2Map:Ljava/util/HashMap;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameMap:Ljava/util/HashMap;

    .line 109
    sput v6, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsInited:I

    const-string v7, "json/hair.json"

    const-string v8, "json/beard.json"

    const-string v9, "json/eyebrow.json"

    const-string v10, "json/eyelash.json"

    const-string v11, "json/pupil.json"

    const-string v12, "json/facemake.json"

    const-string v13, "json/peishi.json"

    const-string v14, "json/hat.json"

    const-string v15, "json/clothes.json"

    const-string v16, "json/shoes.json"

    const-string v17, "json/hair_change.json"

    const-string v18, "json/body.json"

    const-string v19, "json/head.json"

    const-string v20, "json/animation_dance.json"

    const-string v21, "json/animation_edit.json"

    const-string v22, "new/color.json"

    const-string v23, "new/shape_list.json"

    const-string v24, "json/preinstall.json"

    const-string v25, "new/skin_color.json"

    const-string v26, "json/ic_figure.json"

    .line 111
    filled-new-array/range {v7 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    const-string v7, "new/hair/"

    const-string v8, "new/beard/"

    const-string v9, "new/eyebrow/"

    const-string v10, "new/eyelash/"

    const-string v11, "new/pupil/"

    const-string v12, "new/facemake/"

    const-string v13, "new/peishi/"

    const-string v14, "new/hat/"

    const-string v15, "new/clothes/"

    const-string v16, "new/shoes/"

    const-string v17, "new/hair/"

    const-string v18, "new/body/"

    const-string v19, "new/head.head_1/"

    const-string v20, "new/animation/"

    const-string v21, "new/animation/"

    const-string v22, "new/"

    const-string v23, "new/"

    .line 118
    filled-new-array/range {v7 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_BUNDLE_PATH:[Ljava/lang/String;

    const-string v7, "new/controller_cpp.bundle"

    const-string v8, "new/controller_config.bundle"

    const-string v9, "new/other/AR_mask.bundle"

    const-string v10, "new/other/light_0.6.bundle"

    const-string v11, "AI_model/ai_face_processor.bundle"

    const-string v12, "new/other/AR_mask_n.bundle"

    const-string v13, "new/other/AR_mask_ff.bundle"

    const-string v14, "new/other/AR_bozi_mask_alvaro.bundle"

    const-string v15, "new/other/AR_bozi_mask_kapella.bundle"

    .line 124
    filled-new-array/range {v7 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->BUNDLE_PATH:[Ljava/lang/String;

    const-string v7, "toushi_toujin.bundle"

    const-string v8, "hat_01.bundle"

    const-string v9, "hat_02.bundle"

    const-string v10, "hat_03.bundle"

    const-string v11, "peishi_n_02.bundle"

    const-string v12, "peishi_n_05.bundle"

    const-string v13, "peishi_n_12.bundle"

    const-string v14, "peishi_n_14.bundle"

    const-string v15, "peishi_n_13.bundle"

    const-string v16, "huzi_mesh.bundle"

    .line 130
    filled-new-array/range {v7 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->MUTEX_NAME:[Ljava/lang/String;

    .line 144
    sput v6, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    .line 145
    sput v6, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    const-string v0, ""

    .line 146
    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sCountryCode:Ljava/lang/String;

    .line 147
    sput-boolean v6, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    .line 148
    sput-boolean v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsARCoreAddFFAvatar:Z

    const/4 v0, 0x3

    .line 149
    sput v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    const-string v0, "MALE_RES"

    const-string v1, "FEMALE_RES"

    .line 153
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->TYPE_ALL:[Ljava/lang/String;

    new-array v0, v2, [[Ljava/lang/String;

    const-string v1, "MALE_PUBLIC"

    const-string v3, "MALE_SOUTH_ASIA"

    const-string v5, "MALE_AFRICA"

    .line 154
    filled-new-array {v1, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    const-string v3, "FEMALE_PUBLIC"

    const-string v5, "FEMALE_SOUTH_ASIA"

    const-string v6, "FEMALE_AFRICA"

    filled-new-array {v3, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->TYPE:[[Ljava/lang/String;

    const-string v0, "DanceExpression_PUBLIC"

    const-string v4, "DanceExpression_SOUTH_ASIA"

    const-string v5, "DanceExpression_AFRICA"

    .line 158
    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->EXPRESSION_TYPE:[Ljava/lang/String;

    const-string v0, "PUBLIC"

    const-string v4, "SOUTH_ASIA"

    const-string v5, "AFRICA"

    .line 161
    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->AREA_TYPE:[Ljava/lang/String;

    const-string v0, "MALE_NEW_PUBLIC"

    .line 164
    filled-new-array {v1, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->BODY_HEAD_TYPE:[Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sExpressionSoundEffects:Ljava/util/ArrayList;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sNewExpressionCommonSoundEffects:Ljava/util/ArrayList;

    const-string v0, "peishi_n_021.bundle"

    .line 180
    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sCKDoodle:Ljava/lang/String;

    new-array v0, v2, [I

    .line 181
    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sFigureList:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IsKeyExists(Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    .line 654
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 655
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 659
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bundleClientBin()Ljava/lang/String;
    .locals 1

    const-string v0, "new/pta_client_chuanyin_lite.bin"

    return-object v0
.end method

.method public static bundleController(I)Ljava/lang/String;
    .locals 1

    .line 1042
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->BUNDLE_PATH:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private static getAllBundleRes(Landroid/content/Context;I)[Lcom/faceunity/pta_art/entity/BundleRes;
    .locals 24

    const-string v0, "others"

    const-string v1, "labels"

    const-string v2, ""

    .line 559
    :try_start_0
    sget v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    .line 560
    sput v6, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    .line 562
    :cond_0
    sget-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    aget-object v4, v4, p1

    sget-object v7, Lcom/faceunity/pta_art/constant/ResourceJson;->TYPE_ALL:[Ljava/lang/String;

    sget v8, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    aget-object v7, v7, v8

    move-object/from16 v8, p0

    invoke-static {v8, v4, v7}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 564
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v7

    .line 565
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v9

    new-array v9, v9, [Lcom/faceunity/pta_art/entity/BundleRes;

    .line 566
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sput-object v10, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameList:Ljava/util/ArrayList;

    .line 569
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    move v12, v6

    const/4 v13, 0x0

    :goto_0
    add-int/lit8 v14, v7, 0x1

    if-ge v12, v14, :cond_7

    .line 574
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 575
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "name"

    .line 577
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "gender"

    .line 578
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "path"

    .line 579
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v6, "isSupport"

    .line 580
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 587
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v11, "GENDER_MID"

    move-object/from16 v23, v4

    .line 588
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GENDER_MALE"

    const/4 v11, 0x0

    .line 589
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GENDER_FEMALE"

    const/4 v5, 0x1

    .line 590
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    .line 594
    :try_start_1
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v17, v3

    goto :goto_1

    :catch_0
    :cond_1
    const/16 v17, 0x2

    :goto_1
    :try_start_2
    const-string v3, "resId"

    .line 602
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 604
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v19, 0x0

    goto :goto_2

    .line 607
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v3, v6, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    .line 610
    :goto_2
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 612
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v20, 0x0

    goto :goto_4

    .line 615
    :cond_3
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 616
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [I

    const/4 v6, 0x0

    .line 617
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v6, v11, :cond_4

    .line 618
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 620
    :cond_4
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/faceunity/pta_art/constant/ResourceJson$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/faceunity/pta_art/constant/ResourceJson$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    move-object/from16 v20, v3

    .line 623
    :goto_4
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 625
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v22, 0x0

    goto :goto_6

    .line 628
    :cond_5
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 629
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 631
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v6, v11, :cond_6

    .line 632
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aput-object v11, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v22, v4

    .line 638
    :goto_6
    new-instance v3, Lcom/faceunity/pta_art/entity/BundleRes;

    move-object/from16 v16, v3

    invoke-direct/range {v16 .. v22}, Lcom/faceunity/pta_art/entity/BundleRes;-><init>(ILjava/lang/String;I[Ljava/lang/Integer;Z[Ljava/lang/String;)V

    aput-object v3, v9, v13

    .line 639
    sget-object v3, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v6, v5

    move-object/from16 v4, v23

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_7
    if-eq v13, v7, :cond_8

    .line 643
    invoke-static {v13, v9}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDeficiencyResource(I[Lcom/faceunity/pta_art/entity/BundleRes;)[Lcom/faceunity/pta_art/entity/BundleRes;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :cond_8
    return-object v9

    :catch_1
    move-exception v0

    .line 647
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getAreaBundleRes(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 687
    sget v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 688
    sput v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    .line 691
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "basic"

    const-string v2, "name"

    .line 692
    invoke-static {p0, v0, v1, v2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getList(Lorg/json/JSONObject;Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 693
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 694
    sget-object v3, Lcom/faceunity/pta_art/constant/ResourceJson;->sCountryCode:Ljava/lang/String;

    invoke-static {p0, v1, v3, v2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getList(Lorg/json/JSONObject;Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 697
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 698
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getAreaOrder(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 708
    sget v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 709
    sput v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    .line 712
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "basic"

    const-string v2, "order"

    .line 713
    invoke-static {p0, v0, v1, v2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getList(Lorg/json/JSONObject;Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 714
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 715
    sget-object v3, Lcom/faceunity/pta_art/constant/ResourceJson;->sCountryCode:Ljava/lang/String;

    invoke-static {p0, v1, v3, v2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getList(Lorg/json/JSONObject;Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 716
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getAreaType()Ljava/lang/String;
    .locals 2

    .line 1031
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->AREA_TYPE:[Ljava/lang/String;

    sget v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefaultAvatarList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation

    .line 962
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 963
    new-instance v1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Z)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 964
    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sAvatarPTAS:[Lcom/faceunity/pta_art/entity/AvatarPTA;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 965
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getDefaultAvatarListNum()I
    .locals 1

    .line 994
    sget-boolean v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsARCoreAddFFAvatar:Z

    if-eqz v0, :cond_0

    .line 995
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getFFDefaultAvatarList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 997
    :cond_0
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDefaultAvatarList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getDefaultHairIndex(I)I
    .locals 2

    const/4 v0, 0x0

    .line 759
    invoke-static {v0, p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 760
    invoke-static {v0, p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "male_hair_3_change.bundle"

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    return p0

    :cond_0
    return v0
.end method

.method private static getDeficiencyResource(I[Lcom/faceunity/pta_art/entity/BundleRes;)[Lcom/faceunity/pta_art/entity/BundleRes;
    .locals 2

    .line 535
    new-array v0, p0, [Lcom/faceunity/pta_art/entity/BundleRes;

    const/4 v1, 0x0

    .line 536
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static getExpressionCommonBundleRes(Landroid/content/Context;ILjava/lang/String;)[Lcom/faceunity/pta_art/entity/BundleRes;
    .locals 16

    .line 874
    :try_start_0
    sget v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 875
    sput v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    .line 877
    :cond_0
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    aget-object v0, v0, p1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-static {v3, v0, v4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 879
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sExpressionCommonSoundEffects:Ljava/util/ArrayList;

    .line 880
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v4

    new-array v4, v4, [Lcom/faceunity/pta_art/entity/BundleRes;

    .line 881
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameList:Ljava/util/ArrayList;

    .line 884
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v2

    move v8, v6

    .line 888
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v9

    add-int/2addr v9, v2

    if-ge v7, v9, :cond_3

    .line 889
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 890
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "name"

    .line 891
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "gender"

    .line 892
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "path"

    .line 893
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 900
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v14, "GENDER_MID"

    .line 901
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "GENDER_MALE"

    .line 902
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "GENDER_FEMALE"

    .line 903
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v13, "resId"

    .line 906
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    .line 908
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move v1, v6

    goto :goto_1

    .line 911
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string v15, "drawable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v13, v15, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_1
    const-string v13, "misicId"

    .line 914
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "0"

    .line 916
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v9, v6

    goto :goto_2

    .line 919
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string v14, "raw"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v9, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 922
    :goto_2
    sget-object v13, Lcom/faceunity/pta_art/constant/ResourceJson;->sExpressionCommonSoundEffects:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    new-instance v9, Lcom/faceunity/pta_art/entity/BundleRes;

    invoke-direct {v9, v11, v12, v1}, Lcom/faceunity/pta_art/entity/BundleRes;-><init>(ILjava/lang/String;I)V

    aput-object v9, v4, v8

    .line 924
    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x2

    goto/16 :goto_0

    .line 927
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eq v8, v0, :cond_4

    .line 928
    invoke-static {v8, v4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getDeficiencyResource(I[Lcom/faceunity/pta_art/entity/BundleRes;)[Lcom/faceunity/pta_art/entity/BundleRes;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_4
    return-object v4

    :catch_0
    move-exception v0

    .line 932
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExpressionResource(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/16 p0, 0x1a

    goto :goto_0

    :cond_0
    const/16 p0, 0x1c

    .line 865
    :goto_0
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sResourceMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 866
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sResourceMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFFAvatar()[Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 64

    .line 475
    new-instance v21, Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-object/from16 v0, v21

    sget v2, Lcom/transsion/camera/ar_sdk/R$drawable;->ic_smallthumb_kt:I

    sget v3, Lcom/transsion/camera/ar_sdk/R$drawable;->ic_bigthumb_kt:I

    const-string v1, "FF01"

    const-string v4, "new/body/KTnv_body.bundle"

    const/4 v5, 0x1

    const-string v6, "new/head/head_1/KTnv_head.bundle"

    const-string v7, "new/hair/KTnv_hair.bundle"

    const-string v8, ""

    const-string v9, "new/clothes/KTnv_cloth.bundle"

    const-string v10, "new/shoes/KTnv_shoes.bundle"

    const-string v11, "new/eyebrow/eyebrow_01.bundle"

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    invoke-direct/range {v0 .. v20}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDDZ)V

    .line 481
    new-instance v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-object/from16 v22, v0

    sget v24, Lcom/transsion/camera/ar_sdk/R$drawable;->ic_smallthumb_alvaro:I

    move/from16 v25, v24

    const-string v23, "FF02"

    const-string v26, "new/body/KTnv_body.bundle"

    const/16 v27, 0x1

    const-string v28, "new/head/head_1/alvaro.bundle"

    const-string v29, ""

    const-string v30, ""

    const-string v31, ""

    const-string v32, ""

    const-string v33, ""

    const-string v34, ""

    const-string v35, ""

    const-string v36, ""

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x1

    invoke-direct/range {v22 .. v42}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDDZ)V

    .line 487
    new-instance v1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-object/from16 v43, v1

    sget v45, Lcom/transsion/camera/ar_sdk/R$drawable;->ic_smallthumb_kapella:I

    move/from16 v46, v45

    const-string v44, "FF03"

    const-string v47, "new/body/KTnv_body.bundle"

    const/16 v48, 0x1

    const-string v49, "new/head/head_1/kapella.bundle"

    const-string v50, ""

    const-string v51, ""

    const-string v52, ""

    const-string v53, ""

    const-string v54, ""

    const-string v55, ""

    const-string v56, ""

    const-string v57, ""

    const/16 v58, 0x0

    const-wide/16 v59, 0x0

    const-wide/16 v61, 0x0

    const/16 v63, 0x1

    invoke-direct/range {v43 .. v63}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Ljava/lang/String;IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDDZ)V

    .line 493
    sget v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    new-array v2, v2, [Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v3, 0x0

    .line 494
    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 495
    aput-object v1, v2, v0

    const/4 v0, 0x2

    .line 496
    aput-object v21, v2, v0

    return-object v2
.end method

.method public static getFFDefaultAvatarList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation

    .line 974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 975
    new-instance v1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Z)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 976
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getFFAvatar()[Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 977
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 979
    :cond_0
    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sAvatarPTAS:[Lcom/faceunity/pta_art/entity/AvatarPTA;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 980
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static getIcFigureId(I)I
    .locals 1

    .line 852
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sFigureList:[I

    aget p0, v0, p0

    return p0
.end method

.method private static getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "0"

    .line 987
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    invoke-static {p1, p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameToIndex(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getInitialHairIndex(I)I
    .locals 2

    const/4 v0, 0x0

    .line 770
    invoke-static {v0, p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    .line 772
    invoke-static {v0, p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "male_hair_3_change.bundle"

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    .line 774
    :cond_0
    invoke-static {v0, p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object p0

    const-string v1, "female_hair_0_change.bundle"

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    return p0

    :cond_1
    return v0
.end method

.method private static getList(Lorg/json/JSONObject;Ljava/util/Iterator;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Iterator;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the tpye is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qqqqqqqq"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 665
    invoke-static {p2, p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->IsKeyExists(Ljava/lang/String;Ljava/util/Iterator;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 668
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 669
    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 670
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 673
    :cond_0
    invoke-virtual {p0, p3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 675
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 676
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 680
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getMaleNewBodyPos()I
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 807
    invoke-static {v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "male_cloth_n_02.bundle"

    .line 810
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :cond_0
    const/4 v2, -0x1

    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public static getMask(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    .line 1060
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v0, p0

    goto :goto_1

    :sswitch_0
    const-string p1, "new/head/head_1/KTnv_head.bundle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :sswitch_1
    const-string p1, "new/head/head_1/kapella.bundle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string p1, "new/head/head_1/alvaro.bundle"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    const/4 p0, 0x6

    packed-switch v0, :pswitch_data_0

    .line 1068
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleController(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1062
    :pswitch_0
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleController(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/16 p0, 0x8

    .line 1066
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleController(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p0, 0x7

    .line 1064
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleController(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1071
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "new/hair/female_hair_5_change.bundle"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    .line 1072
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleController(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1074
    :cond_4
    invoke-static {v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->bundleController(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7ca436a0 -> :sswitch_2
        -0x2e426c9 -> :sswitch_1
        0x29b017bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMutexFlag(III)Z
    .locals 4

    .line 794
    invoke-static {p0, p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object p0

    .line 796
    sget-object p1, Lcom/faceunity/pta_art/constant/ResourceJson;->MUTEX_NAME:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 797
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private static getNameList(II)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p1

    .line 742
    sget-object p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 743
    sget-object p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNameToIndex(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 750
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getNewClothesBody()Ljava/lang/String;
    .locals 2

    .line 1079
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sResource2Map:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getNewListAfterOrder([Lcom/faceunity/pta_art/entity/BundleRes;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;"
        }
    .end annotation

    .line 723
    array-length v0, p0

    new-array v0, v0, [Lcom/faceunity/pta_art/entity/BundleRes;

    .line 724
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sNewNameList:Ljava/util/ArrayList;

    .line 726
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 727
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    array-length v4, p0

    if-gt v3, v4, :cond_0

    .line 728
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p0, v3

    aput-object v3, v0, v1

    .line 729
    sget-object v3, Lcom/faceunity/pta_art/constant/ResourceJson;->sNewNameList:Ljava/util/ArrayList;

    sget-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameList:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v3, Lcom/faceunity/pta_art/constant/ResourceJson;->sExpressionCommonSoundEffects:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 731
    sget-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sNewExpressionCommonSoundEffects:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method private static getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 502
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p1

    new-array p1, p1, [B

    .line 504
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    .line 505
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 506
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    .line 502
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 511
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 509
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public static getPreinstallBigThumbnail(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 358
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->AREA_TYPE:[Ljava/lang/String;

    sget v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 361
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 363
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "bigThumbNailRes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getPreinstallSmallThumbnail(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->AREA_TYPE:[Ljava/lang/String;

    sget v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 349
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 351
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "smallThumbNailRes"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getResourceLength(II)I
    .locals 1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p1

    .line 785
    sget-object p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 786
    sget-object p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getSoundEffectId(ZI)I
    .locals 0

    if-eqz p0, :cond_0

    .line 1050
    sget-object p0, Lcom/faceunity/pta_art/constant/ResourceJson;->sExpressionSoundEffects:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 1051
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    .line 1052
    sget-object p0, Lcom/faceunity/pta_art/constant/ResourceJson;->sExpressionSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getTemplateAvatar(I)Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 31

    move/from16 v0, p0

    .line 1002
    sput v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    const/16 v1, 0xc

    if-nez v0, :cond_0

    .line 1004
    new-instance v16, Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-static {v1, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResources(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-string v3, ""

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v15}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Ljava/lang/String;IIILjava/lang/String;IIIIIZD)V

    return-object v16

    .line 1006
    :cond_0
    new-instance v2, Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, 0x1

    invoke-static {v1, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResources(II)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-string v18, ""

    move-object/from16 v17, v2

    invoke-direct/range {v17 .. v30}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Ljava/lang/String;IIILjava/lang/String;IIIIIZD)V

    return-object v2
.end method

.method public static getTypeResource(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/BundleRes;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 548
    :cond_0
    sput p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    .line 550
    sget-object p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sResourceMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 551
    sget-object p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sResourceMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTypeResources(II)Ljava/lang/String;
    .locals 1

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p0, p1

    .line 942
    sget-object p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sResource2Map:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 943
    sget-object p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sResource2Map:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static headBundleName()Ljava/lang/String;
    .locals 1

    .line 951
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sBundleName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 214
    sget v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsInited:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->initArea(Landroid/content/res/Resources;)V

    .line 216
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->loadPartsResource(Landroid/content/Context;)V

    .line 217
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->loadExpressionResource(Landroid/content/Context;)V

    .line 218
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->loadHeadBodyResource(Landroid/content/Context;)V

    .line 219
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->loadPreinstallJson(Landroid/content/Context;)V

    .line 220
    invoke-static {p0}, Lcom/faceunity/pta_art/constant/ResourceJson;->loadIcFigureId(Landroid/content/Context;)V

    .line 221
    sput v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsInited:I

    .line 223
    :cond_0
    sput-boolean v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsARCoreAddFFAvatar:Z

    return-void
.end method

.method public static initArea(Landroid/content/res/Resources;)V
    .locals 4

    const-string v0, "persist.sys.oobe_country"

    const-string v1, ""

    .line 184
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sCountryCode:Ljava/lang/String;

    .line 185
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget v0, Lcom/transsion/camera/ar_sdk/R$string;->area_code:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sCountryCode:Ljava/lang/String;

    .line 188
    :cond_0
    sget v0, Lcom/transsion/camera/ar_sdk/R$array;->custom_country_africa:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 189
    sget v1, Lcom/transsion/camera/ar_sdk/R$array;->custom_country_south_asia:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 190
    sget v2, Lcom/transsion/camera/ar_sdk/R$array;->custom_country_ff:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 191
    sget-object v3, Lcom/faceunity/pta_art/constant/ResourceJson;->sCountryCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/faceunity/pta_art/constant/ResourceJson;->isContainString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 192
    sput v3, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    goto :goto_0

    .line 193
    :cond_1
    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sCountryCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->isContainString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 194
    sput v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 196
    sput v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    :goto_0
    if-eqz v2, :cond_3

    .line 198
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sCountryCode:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->isContainString([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/camera/ar_sdk/R$bool;->is_support_ffavatar:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 199
    sput-boolean v3, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    :cond_3
    return-void
.end method

.method private static isContainString([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    .line 205
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_1

    .line 206
    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sCountryCode:Ljava/lang/String;

    aget-object v2, p0, p1

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static jsonColor()Ljava/lang/String;
    .locals 2

    .line 1014
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static jsonShapeParam()Ljava/lang/String;
    .locals 2

    .line 1038
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static jsonSkinColor(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 2

    .line 1018
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 1020
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 1021
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1022
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1024
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 1018
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 1025
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$getAllBundleRes$0(I)[Ljava/lang/Integer;
    .locals 0

    .line 620
    new-array p0, p0, [Ljava/lang/Integer;

    return-object p0
.end method

.method private static loadExpressionResource(Landroid/content/Context;)V
    .locals 5

    const/16 v0, 0xd

    const-string v1, "DanceExpression_RES"

    .line 277
    invoke-static {p0, v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getExpressionCommonBundleRes(Landroid/content/Context;ILjava/lang/String;)[Lcom/faceunity/pta_art/entity/BundleRes;

    move-result-object v1

    .line 279
    :try_start_0
    sget-object v2, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    aget-object v0, v2, v0

    sget-object v2, Lcom/faceunity/pta_art/constant/ResourceJson;->EXPRESSION_TYPE:[Ljava/lang/String;

    sget v3, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    aget-object v2, v2, v3

    invoke-static {p0, v0, v2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getAreaBundleRes(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    .line 281
    invoke-static {v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getAreaOrder(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 284
    invoke-static {v1, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNewListAfterOrder([Lcom/faceunity/pta_art/entity/BundleRes;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v3

    .line 286
    :cond_0
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sNewNameList:Ljava/util/ArrayList;

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    .line 287
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sNewExpressionCommonSoundEffects:Ljava/util/ArrayList;

    sput-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sExpressionSoundEffects:Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    sget-object v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    sget-object v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 292
    sget-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v3, :cond_2

    .line 294
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    :cond_2
    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sExpressionSoundEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 299
    :cond_3
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sResourceMap:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    const/16 v0, 0x1c

    const/16 v1, 0xe

    const-string v2, "editExpression"

    .line 306
    invoke-static {p0, v1, v2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getExpressionCommonBundleRes(Landroid/content/Context;ILjava/lang/String;)[Lcom/faceunity/pta_art/entity/BundleRes;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 308
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 309
    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sResourceMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static loadHeadBodyResource(Landroid/content/Context;)V
    .locals 13

    const-string v0, "name"

    const-string v1, "path"

    .line 314
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 315
    fill-array-data v4, :array_0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_2

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_1

    .line 318
    sput v7, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    .line 319
    aget v8, v4, v6

    mul-int/lit8 v9, v8, 0x2

    add-int/2addr v9, v7

    .line 321
    :try_start_0
    sget-object v10, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    aget-object v8, v10, v8

    sget-object v11, Lcom/faceunity/pta_art/constant/ResourceJson;->BODY_HEAD_TYPE:[Ljava/lang/String;

    aget-object v12, v11, v7

    invoke-static {p0, v8, v12}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 323
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 324
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/faceunity/pta_art/constant/ResourceJson;->sBundleName:Ljava/lang/String;

    .line 326
    sget-object v8, Lcom/faceunity/pta_art/constant/ResourceJson;->sResource2Map:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 329
    aget v8, v4, v6

    aget-object v8, v10, v8

    aget-object v9, v11, v3

    invoke-static {p0, v8, v9}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 331
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 332
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/faceunity/pta_art/constant/ResourceJson;->sBundleName:Ljava/lang/String;

    .line 334
    sget-object v8, Lcom/faceunity/pta_art/constant/ResourceJson;->sResource2Map:Ljava/util/HashMap;

    const/16 v10, 0x22

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    .line 339
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-void

    :array_0
    .array-data 4
        0xb
        0xc
    .end array-data
.end method

.method private static loadIcFigureId(Landroid/content/Context;)V
    .locals 11

    .line 820
    :try_start_0
    sget-object v0, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->AREA_TYPE:[Ljava/lang/String;

    sget v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    aget-object v1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    .line 825
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v6, v3

    move v5, v4

    :goto_0
    add-int/lit8 v7, v1, 0x1

    if-ge v5, v7, :cond_2

    .line 830
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 831
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "resId"

    .line 833
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    .line 835
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v7, v3

    goto :goto_1

    .line 838
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 841
    :goto_1
    sget-object v8, Lcom/faceunity/pta_art/constant/ResourceJson;->sFigureList:[I

    array-length v9, v8

    if-ge v6, v9, :cond_1

    .line 842
    aput v7, v8, v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 847
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private static loadPartsResource(Landroid/content/Context;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xb

    if-ge v1, v2, :cond_5

    move v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_4

    .line 238
    sput v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v2

    .line 240
    invoke-static {p0, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getAllBundleRes(Landroid/content/Context;I)[Lcom/faceunity/pta_art/entity/BundleRes;

    move-result-object v4

    .line 242
    :try_start_0
    sget-object v5, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    aget-object v5, v5, v1

    sget-object v6, Lcom/faceunity/pta_art/constant/ResourceJson;->TYPE:[[Ljava/lang/String;

    sget v7, Lcom/faceunity/pta_art/constant/ResourceJson;->sGender:I

    aget-object v6, v6, v7

    sget v7, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    aget-object v6, v6, v7

    invoke-static {p0, v5, v6}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 243
    invoke-static {v5}, Lcom/faceunity/pta_art/constant/ResourceJson;->getAreaBundleRes(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v6

    .line 244
    invoke-static {v5}, Lcom/faceunity/pta_art/constant/ResourceJson;->getAreaOrder(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 247
    invoke-static {v4, v5}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNewListAfterOrder([Lcom/faceunity/pta_art/entity/BundleRes;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v7

    .line 249
    :cond_0
    sget-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sNewNameList:Ljava/util/ArrayList;

    sput-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 252
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 253
    sget-object v6, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 254
    sget-object v6, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 255
    sget-object v8, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-eqz v7, :cond_1

    .line 257
    invoke-interface {v7, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 262
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x6

    if-ne v4, v1, :cond_3

    .line 263
    sget-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    sget-object v5, Lcom/faceunity/pta_art/constant/ResourceJson;->sCKDoodle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->mCKDoodleGlasses:Lcom/faceunity/pta_art/entity/BundleRes;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_3
    sget-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sResourceMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/faceunity/pta_art/constant/ResourceJson;->sNameAllList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 269
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static loadPreinstallJson(Landroid/content/Context;)V
    .locals 50

    const-string v0, ""

    const/4 v1, 0x0

    .line 370
    invoke-static {v1, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x1

    .line 371
    invoke-static {v3, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v4

    const/16 v5, 0x8

    .line 372
    invoke-static {v5, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x2

    .line 373
    invoke-static {v7, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x5

    .line 374
    invoke-static {v9, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x6

    .line 375
    invoke-static {v11, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v13, 0x7

    .line 376
    invoke-static {v13, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v14

    .line 377
    invoke-static {v1, v3}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v15

    .line 378
    invoke-static {v5, v3}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 379
    invoke-static {v7, v3}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 380
    invoke-static {v9, v3}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v9

    .line 381
    invoke-static {v11, v3}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v11

    .line 382
    invoke-static {v13, v3}, Lcom/faceunity/pta_art/constant/ResourceJson;->getNameList(II)Ljava/util/ArrayList;

    move-result-object v13

    .line 385
    :try_start_0
    sget-object v16, Lcom/faceunity/pta_art/constant/ResourceJson;->RESOURCE_PATH:[Ljava/lang/String;

    const/16 v17, 0x11

    aget-object v7, v16, v17

    sget-object v16, Lcom/faceunity/pta_art/constant/ResourceJson;->AREA_TYPE:[Ljava/lang/String;

    sget v17, Lcom/faceunity/pta_art/constant/ResourceJson;->sAreaType:I

    aget-object v3, v16, v17

    move-object/from16 v16, v13

    move-object/from16 v13, p0

    invoke-static {v13, v7, v3}, Lcom/faceunity/pta_art/constant/ResourceJson;->getObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 386
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 389
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v13

    new-array v13, v13, [Lcom/faceunity/pta_art/entity/AvatarPTA;

    sput-object v13, Lcom/faceunity/pta_art/constant/ResourceJson;->sAvatarPTAS:[Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v13, 0x1

    .line 390
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v17

    move-object/from16 v20, v11

    const/16 v19, 0x1

    add-int/lit8 v11, v17, 0x1

    if-ge v13, v11, :cond_3

    const-string v11, "TAG"

    move-object/from16 v17, v9

    .line 391
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v1

    const-string v1, "the i is "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 394
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v9, "bundleDir"

    .line 396
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v9, "smallThumbNailRes"

    .line 397
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "bigThumbNailRes"

    .line 398
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v41, v3

    const-string v3, "gender"

    .line 399
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v42, v7

    const-string v7, "headFile"

    .line 400
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v7, "hairIndex"

    .line 401
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v43, v13

    const-string v13, "beardIndex"

    .line 402
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v44, v5

    const-string v5, "clothesIndex"

    .line 403
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v45, v15

    const-string v15, "shoeIndex"

    .line 404
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v46, v14

    const-string v14, "eyebrowIndex"

    .line 405
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v47, v12

    const-string v12, "facemakeIndex"

    .line 406
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v48, v10

    const-string v10, "glassesIndex"

    .line 407
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v22, v10

    const-string v10, "hatIndex"

    .line 408
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v24, v10

    const-string v10, "isDualHairColor"

    .line 409
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v36

    const-string v10, "hairColorValue"

    .line 410
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v37

    const-string v10, "skinColorValue"

    .line 411
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v39

    .line 425
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "drawable"

    if-eqz v1, :cond_0

    move-object/from16 v25, v12

    const/4 v1, 0x0

    goto :goto_1

    .line 428
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v25, v12

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v9, v10, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 431
    :goto_1
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    goto :goto_2

    .line 434
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v10, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 437
    :goto_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "GENDER_MID"

    move-object/from16 v18, v0

    const/4 v12, 0x2

    .line 438
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GENDER_MALE"

    const/4 v11, 0x0

    .line 439
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GENDER_FEMALE"

    const/4 v12, 0x1

    .line 440
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xc

    .line 443
    invoke-static {v3, v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResources(II)Ljava/lang/String;

    move-result-object v27

    if-nez v0, :cond_2

    .line 446
    invoke-static {v7, v2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v3

    .line 447
    invoke-static {v13, v4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v7

    .line 448
    invoke-static {v5, v6}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v5

    .line 449
    invoke-static {v15, v6}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v10

    .line 450
    invoke-static {v14, v8}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v11

    move-object/from16 v13, v25

    move-object/from16 v12, v48

    .line 451
    invoke-static {v13, v12}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v13

    move-object/from16 v15, v22

    move-object/from16 v14, v47

    .line 452
    invoke-static {v15, v14}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v15

    move-object/from16 v47, v2

    move/from16 v22, v3

    move-object/from16 v3, v24

    move-object/from16 v2, v46

    .line 453
    invoke-static {v3, v2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v3

    move-object/from16 v46, v2

    move/from16 v35, v3

    move/from16 v30, v5

    move/from16 v29, v7

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v13

    move-object v10, v14

    move/from16 v34, v15

    move-object/from16 v2, v16

    move/from16 v28, v22

    move-object/from16 v11, v45

    move-object/from16 v45, v4

    move-object/from16 v4, v20

    goto :goto_3

    :cond_2
    move-object/from16 v3, v24

    move-object/from16 v13, v25

    move-object/from16 v11, v45

    move-object/from16 v10, v47

    move-object/from16 v12, v48

    move-object/from16 v47, v2

    move-object/from16 v2, v22

    .line 455
    invoke-static {v7, v11}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v7

    move-object/from16 v45, v4

    move-object/from16 v4, v44

    .line 456
    invoke-static {v5, v4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v5

    .line 457
    invoke-static {v15, v4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v15

    move-object/from16 v44, v4

    move-object/from16 v4, v21

    .line 458
    invoke-static {v14, v4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v14

    move-object/from16 v21, v4

    move-object/from16 v4, v17

    .line 459
    invoke-static {v13, v4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v13

    move-object/from16 v17, v4

    move-object/from16 v4, v20

    .line 460
    invoke-static {v2, v4}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v2

    move/from16 v20, v2

    move-object/from16 v2, v16

    .line 461
    invoke-static {v3, v2}, Lcom/faceunity/pta_art/constant/ResourceJson;->getIndex(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v3

    move/from16 v35, v3

    move/from16 v30, v5

    move/from16 v28, v7

    move/from16 v33, v13

    move/from16 v32, v14

    move/from16 v31, v15

    move/from16 v34, v20

    const/16 v29, 0x0

    .line 463
    :goto_3
    new-instance v3, Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-object/from16 v22, v3

    move/from16 v24, v1

    move/from16 v25, v9

    move/from16 v26, v0

    invoke-direct/range {v22 .. v40}, Lcom/faceunity/pta_art/entity/AvatarPTA;-><init>(Ljava/lang/String;IIILjava/lang/String;IIIIIIIIZDD)V

    move/from16 v0, v43

    neg-int v1, v0

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    int-to-long v13, v1

    .line 465
    invoke-virtual {v3, v13, v14}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setIdCompat(J)V

    .line 466
    sget-object v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sAvatarPTAS:[Lcom/faceunity/pta_art/entity/AvatarPTA;

    add-int/lit8 v13, v0, -0x1

    aput-object v3, v1, v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v13, v0, 0x1

    move-object/from16 v16, v2

    move-object v15, v11

    move-object/from16 v9, v17

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v3, v41

    move-object/from16 v7, v42

    move-object/from16 v5, v44

    move-object/from16 v14, v46

    move-object/from16 v2, v47

    move-object v11, v4

    move-object/from16 v4, v45

    move-object/from16 v49, v12

    move-object v12, v10

    move-object/from16 v10, v49

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method
