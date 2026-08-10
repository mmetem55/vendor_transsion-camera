.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;
.super Landroid/widget/RelativeLayout;
.source "VideoFaceBeautyExRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ResetVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$FooterVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$ChildVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$GroupVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;
    }
.end annotation


# static fields
.field private static final BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_KEY_ARRAY:[Ljava/lang/String;

.field private static final CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

.field private static final FEATURE_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NORMAL_STATE_SET:[I

.field private static final SKIN_COLOR_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStates:[[I


# instance fields
.field private final TYPE_CHILD:I

.field private final TYPE_CHILD_SECONDARY:I

.field private final TYPE_FOOTER:I

.field private final TYPE_GROUP:I

.field private final TYPE_RESET:I

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mBlackIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFeatureKey:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private final mFaceBeautyInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field private final mItdV2Support:Z

.field private mItemViewEnabled:Z

.field private mLensFacing:Ljava/lang/String;

.field private mOriginValue:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

.field protected final mStateList:Landroid/content/res/ColorStateList;

.field protected final mStateListBlack:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$KpfWz4TxN9yUeeX1CB9b2bBT5ZU(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->lambda$showDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LKcH_feY2pSjF05n8argXzYUMOU(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iF9iH-ExLVEpE_goM3bKbkxhaJk(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->lambda$updateExpandState$2(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 87
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyExRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 100
    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->NORMAL_STATE_SET:[I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    .line 101
    sget-object v4, Landroid/widget/RelativeLayout;->SELECTED_STATE_SET:[I

    aput-object v4, v3, v2

    aput-object v1, v3, v0

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->sStates:[[I

    const-string v5, "soften"

    const-string v6, "whiten"

    const-string v7, "face"

    const-string v8, "eye"

    const-string v9, "cuttingface"

    const-string v10, "nose"

    const-string v11, "head"

    const-string v12, "five_senses"

    .line 114
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    const-string v0, "neutral"

    const-string v1, "cold"

    const-string v2, "warm"

    const-string v3, "brown"

    .line 124
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    const-string v1, "8"

    const-string v2, "207"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    const-string v6, "20"

    const-string v7, "0"

    const-string v8, "40"

    .line 132
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    const-string v1, "15"

    const-string v2, "212"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    const-string v6, "30"

    const-string v7, "0"

    const-string v8, "131"

    .line 133
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    const-string v1, "35"

    const-string v2, "207"

    const-string v3, "40"

    const-string v4, "25"

    const-string v5, "0"

    const-string v6, "50"

    const-string v7, "0"

    const-string v8, "217"

    .line 134
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    const-string v1, "50"

    const-string v2, "212"

    const-string v3, "60"

    const-string v4, "25"

    const-string v5, "15"

    const-string v6, "50"

    const-string v7, "0"

    const-string v8, "333"

    .line 135
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    const-string v1, "15"

    const-string v2, "212"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    const-string v6, "20"

    const-string v7, "0"

    const-string v8, "419"

    .line 136
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    const-string v1, "25"

    const-string v2, "20"

    const-string v3, "30"

    const-string v4, "5"

    const-string v5, "10"

    const-string v6, "30"

    const-string v7, "0"

    const-string v8, "535"

    .line 137
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    const-string v1, "8"

    const-string v2, "207"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    .line 139
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    const-string v1, "8"

    const-string v2, "212"

    const-string v3, "20"

    const-string v4, "15"

    const-string v5, "0"

    const-string v6, "30"

    const-string v7, "0"

    const-string v8, "101"

    .line 140
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    const-string v1, "30"

    const-string v2, "207"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "202"

    .line 141
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    const-string v1, "35"

    const-string v2, "212"

    const-string v3, "35"

    const-string v4, "15"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "303"

    .line 142
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    const-string v1, "15"

    const-string v2, "212"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "404"

    .line 143
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    const-string v1, "25"

    const-string v2, "20"

    const-string v3, "30"

    const-string v4, "15"

    const-string v5, "10"

    const-string v6, "30"

    const-string v7, "0"

    const-string v8, "505"

    .line 144
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    .line 146
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    .line 164
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    .line 182
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    .line 201
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    .line 288
    invoke-direct/range {p0 .. p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItemViewEnabled:Z

    .line 106
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-string v2, ""

    .line 112
    iput-object v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    const v2, 0xfa01

    .line 757
    iput v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_GROUP:I

    const v2, 0xfa02

    .line 758
    iput v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_CHILD:I

    const v2, 0xfa03

    .line 759
    iput v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_CHILD_SECONDARY:I

    const v2, 0xfa04

    .line 760
    iput v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_RESET:I

    const v2, 0xfa05

    .line 761
    iput v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TYPE_FOOTER:I

    .line 289
    iput-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    .line 290
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/utils/CustomConfigUtil;->getItdV2Support()Z

    move-result v2

    iput-boolean v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItdV2Support:Z

    .line 291
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$5;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$5;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    iput-object v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    .line 308
    new-instance v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$6;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$6;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    iput-object v3, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mBlackIconMap:Ljava/util/Map;

    .line 326
    sget v3, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_selected_color:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 327
    sget v4, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 328
    sget v5, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 329
    new-instance v5, Landroid/content/res/ColorStateList;

    sget-object v6, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->sStates:[[I

    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v10, 0x0

    aput v3, v9, v10

    aput v4, v9, v1

    invoke-direct {v5, v6, v9}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v5, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    .line 330
    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v8, [I

    aput v3, v5, v10

    aput v0, v5, v1

    invoke-direct {v4, v6, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v4, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    .line 331
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    iput-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    .line 333
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    move v9, v10

    :goto_0
    if-ge v9, v8, :cond_3

    .line 335
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    const-string v0, "whiten"

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v1, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 338
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 339
    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    sget v5, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_arrow:I

    sget v6, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_arrow_black:I

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;III)V

    .line 340
    iput v9, v11, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 341
    iput-boolean v10, v11, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 342
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    move v13, v10

    :goto_1
    if-ge v13, v12, :cond_0

    .line 344
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 345
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v3, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 346
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 347
    iget-object v1, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v0, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 348
    new-instance v14, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    const/4 v6, 0x1

    move-object v0, v14

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 349
    iput v13, v14, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->position:I

    .line 350
    iput-object v11, v14, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->group:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    .line 351
    invoke-virtual {v11, v14}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 353
    :cond_0
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;

    sget v1, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_footer:I

    sget v2, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_footer_black:I

    invoke-direct {v0, p0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Footer;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;II)V

    .line 354
    invoke-virtual {v11, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    .line 355
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v11}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_2

    :cond_1
    const-string v0, "reset"

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$1;)V

    .line 358
    iput v9, v0, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 359
    iget-object v1, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    iget-object v2, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->title:Ljava/lang/String;

    .line 360
    iget-object v1, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v1, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    iput v1, v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Reset;->drawableId:I

    .line 361
    iget-object v1, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_2

    .line 363
    :cond_2
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v2, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 364
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v3, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 365
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v0, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 366
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    iget-object v1, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautyInfoList:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v1, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 367
    new-instance v11, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;

    const/4 v6, 0x0

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 368
    iput v9, v11, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 369
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, v11}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 373
    :cond_3
    iget-object v0, v7, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$7;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$7;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->setExpandableToggleListener(Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItdV2Support:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSeekBarUI()V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/util/Map;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mBlackIconMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 86
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Landroid/content/Context;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method private getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 459
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 p0, p0, 0x65

    .line 460
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0
.end method

.method private getSkinColor()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    .line 464
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideAutoHint()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_0

    .line 220
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 234
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 236
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateDataStoreResetValue()V

    .line 238
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string p2, "off"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string p2, "aiv2"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateExpandState$2(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 5

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    instance-of v1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    if-nez v1, :cond_1

    return-void

    .line 504
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;

    .line 505
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Group;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_expand"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 506
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    .line 505
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->expand(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_0

    .line 511
    :cond_2
    iput-boolean v2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 512
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->collapse(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    :goto_0
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 225
    sget-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 231
    :cond_1
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 232
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_message:I

    .line 233
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda1;-><init>()V

    .line 234
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_Positive_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    .line 235
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 243
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private updateDataStoreResetValue()V
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateState()V

    return-void
.end method

.method private updateDefaultValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 423
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 424
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    .line 425
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v2, "black"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "brown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    .line 427
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    :goto_2
    move-object p2, p1

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 430
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto :goto_2

    :goto_3
    move p1, v1

    .line 437
    :goto_4
    array-length v0, p2

    if-ge p1, v0, :cond_9

    .line 438
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v2, "whiten"

    .line 439
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 440
    aget-object v2, p2, p1

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    aget-object v3, p2, p1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x65

    .line 442
    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_5
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 443
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 444
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    :cond_6
    const-string v8, "0"

    .line 448
    :goto_6
    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v10, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 450
    :cond_7
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItdV2Support:Z

    if-nez v2, :cond_8

    sget-object v2, Lcom/transsion/camera/utils/SettingInfo;->ITDV2LIST:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_7

    .line 453
    :cond_8
    aget-object v2, p2, p1

    .line 454
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private updateExpandState()V
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    const v1, 0xfa01

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItems(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;)V

    .line 497
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateSeekBarUI()V
    .locals 5

    .line 699
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string v1, "aiv2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xa9

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    .line 705
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 706
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 707
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string v3, "five_senses"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    rem-int/lit8 v0, v0, 0x65

    .line 710
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    .line 711
    invoke-interface {v1, v3, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 712
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 v1, 0x64

    invoke-interface {p0, v1, v2, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(IIII)V

    goto :goto_1

    .line 715
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    .line 716
    invoke-interface {p0, v0, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateSelectedItemByKey()V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)V
    .locals 5

    .line 746
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateWhite(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)V

    .line 747
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$1800(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_default_feature"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 748
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$1500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$1500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "aiv2"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 751
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 753
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateState()V
    .locals 4

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_default_feature"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 405
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 408
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateUIStateByKey(Ljava/lang/String;I)V

    return-void
.end method

.method private updateUIStateByKey(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 259
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0xa9

    invoke-interface {p2, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 260
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    .line 264
    :goto_0
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, p2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "five_senses"

    .line 266
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 267
    rem-int/lit8 p2, p2, 0x65

    .line 269
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_4

    .line 270
    invoke-interface {p1, v0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p1, v3, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 p1, 0x64

    invoke-interface {p0, p1, v3, v3, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(IIII)V

    goto :goto_1

    :cond_2
    const-string p2, "aiv2"

    .line 274
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_4

    .line 276
    invoke-interface {p1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v3, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_1

    .line 280
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_4

    .line 281
    invoke-interface {p1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateWhite(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)V
    .locals 7

    if-eqz p1, :cond_4

    .line 723
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;->access$1500(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object p1

    .line 724
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "neutral"

    const-string v3, "brown"

    const-string v4, "warm"

    const-string v5, "cold"

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v6

    :goto_0
    const-string p1, "whiten"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 726
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 727
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 738
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 739
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0x12f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 734
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 735
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0xca

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 730
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 731
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v0, v0, 0x65

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2eaee4 -> :sswitch_3
        0x379285 -> :sswitch_2
        0x59a8136 -> :sswitch_1
        0x6dee1dc7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeContrast(Z)V
    .locals 0

    .line 577
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 578
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hideDialog()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 414
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 415
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->fb_rv:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 416
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 417
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;-><init>()V

    .line 418
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 419
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItemViewEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 689
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public openContrast()V
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "contrast_on"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public progressChanged(I)V
    .locals 6

    .line 538
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 542
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "five_senses"

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "neutral"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_2
    const-string v4, "brown"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "warm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_4
    const-string v4, "cold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    const-string v1, "whiten"

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 544
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 556
    :pswitch_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 557
    rem-int/lit8 v1, v0, 0x65

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 553
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0x12f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 550
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0xca

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 547
    :pswitch_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v3, p1, 0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 563
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2eaee4 -> :sswitch_4
        0x379285 -> :sswitch_3
        0x59a8136 -> :sswitch_2
        0x4410ccb2 -> :sswitch_1
        0x6dee1dc7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 6

    .line 469
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 470
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 471
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v1

    .line 473
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    .line 474
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "soften"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "face_beauty_default_feature"

    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    sget-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerSettingDevice,cameraId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",facing:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",id:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 480
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 481
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 482
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 484
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateExpandState()V

    .line 485
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateSelectedItemByKey()V

    .line 486
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$8;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$8;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 491
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const-string p0, "registerSettingDevice-"

    .line 492
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 694
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 695
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mItemViewEnabled:Z

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 533
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 519
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideDialog()V

    .line 520
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->hideAutoHint()V

    const/4 p1, 0x0

    .line 521
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 522
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 523
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public updateFeatureUI(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->updateState()V

    const/4 p1, 0x0

    .line 586
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 588
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method updateLowLight(Z)V
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->updateLowLight(Z)V

    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
