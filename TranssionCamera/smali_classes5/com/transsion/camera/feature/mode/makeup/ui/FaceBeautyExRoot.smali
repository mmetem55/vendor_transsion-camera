.class public Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;
.super Landroid/widget/RelativeLayout;
.source "FaceBeautyExRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/IFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ResetVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$FooterVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$ChildVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$GroupVH;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;,
        Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;
    }
.end annotation


# static fields
.field private static final BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

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

.field private static final FACE_BEAUTY_INFO_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private static final FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

.field private static final FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

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

.field private static final sBlackIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStates:[[I


# instance fields
.field private final TYPE_CHILD:I

.field private final TYPE_CHILD_SECONDARY:I

.field private final TYPE_FOOTER:I

.field private final TYPE_GROUP:I

.field private final TYPE_RESET:I

.field private isClickDialog:Z

.field private final mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mContext:Landroid/content/Context;

.field private mCurrentFeatureKey:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private final mFaceAttributeSupport:Z

.field private mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mGender:Ljava/lang/String;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

.field private mLensFacing:Ljava/lang/String;

.field private mOriginValue:Ljava/lang/String;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

.field protected final mStateList:Landroid/content/res/ColorStateList;

.field protected final mStateListBlack:Landroid/content/res/ColorStateList;


# direct methods
.method public static synthetic $r8$lambda$4bOj3AusVeE1LziQA6mydPKvjbA(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->lambda$updateExpandState$2(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hI-9jU1LePr55egE7Z4MH3Gdl_g(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mIiO2s6lnvX_y7mbh7O-iV0BJ5E(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->lambda$showDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 92
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceBeautyExRoot"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 102
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sBlackIconMap:Ljava/util/Map;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 117
    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->NORMAL_STATE_SET:[I

    const/4 v3, 0x2

    new-array v3, v3, [[I

    .line 118
    sget-object v4, Landroid/widget/RelativeLayout;->SELECTED_STATE_SET:[I

    aput-object v4, v3, v2

    aput-object v1, v3, v0

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sStates:[[I

    const-string v5, "soften"

    const-string v6, "whiten"

    const-string v7, "face"

    const-string v8, "eye"

    const-string v9, "cuttingface"

    const-string v10, "nose"

    const-string v11, "head"

    .line 133
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    const-string v0, "neutral"

    const-string v1, "cold"

    const-string v2, "warm"

    const-string v3, "brown"

    .line 142
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    const-string v1, "8"

    const-string v2, "207"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    const-string v6, "20"

    const-string v7, "0"

    .line 150
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    const-string v1, "15"

    const-string v2, "212"

    const-string v3, "20"

    const-string v4, "5"

    const-string v5, "0"

    const-string v6, "30"

    const-string v7, "0"

    .line 151
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    const-string v1, "35"

    const-string v2, "207"

    const-string v3, "40"

    const-string v4, "25"

    const-string v5, "0"

    const-string v6, "50"

    const-string v7, "0"

    .line 152
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    const-string v2, "50"

    const-string v3, "212"

    const-string v4, "60"

    const-string v5, "25"

    const-string v6, "15"

    const-string v7, "50"

    const-string v8, "0"

    .line 153
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    const-string v2, "15"

    const-string v3, "212"

    const-string v4, "20"

    const-string v5, "5"

    const-string v6, "0"

    const-string v7, "20"

    const-string v8, "0"

    .line 154
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    const-string v3, "25"

    const-string v4, "20"

    const-string v5, "30"

    const-string v6, "5"

    const-string v7, "10"

    const-string v8, "30"

    const-string v9, "0"

    .line 155
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    const-string v3, "8"

    const-string v4, "207"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    .line 157
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    const-string v4, "8"

    const-string v5, "212"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    .line 158
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    const-string v4, "30"

    const-string v5, "207"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    .line 159
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    const-string v5, "35"

    const-string v6, "212"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, "0"

    .line 160
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    const-string v5, "15"

    const-string v6, "212"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, "0"

    .line 161
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    const-string v6, "25"

    const-string v7, "20"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, "0"

    const-string v12, "0"

    .line 162
    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    .line 164
    sput-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

    .line 165
    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 166
    sput-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 167
    sput-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

    .line 168
    sput-object v3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 169
    sput-object v5, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    .line 187
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    .line 203
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    .line 221
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$5;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    .line 236
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$6;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$6;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 327
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 101
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    .line 123
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const-string v0, ""

    .line 130
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    const-string v0, "1"

    .line 132
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    const v0, 0xfa01

    .line 805
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_GROUP:I

    const v0, 0xfa02

    .line 806
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_CHILD:I

    const v0, 0xfa03

    .line 807
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_CHILD_SECONDARY:I

    const v0, 0xfa04

    .line 808
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_RESET:I

    const v0, 0xfa05

    .line 809
    iput v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TYPE_FOOTER:I

    .line 328
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "face_attribute_support"

    invoke-static {p1, v2, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceAttributeSupport:Z

    .line 331
    sget v0, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_selected_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 332
    sget v2, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 333
    sget v3, Lcom/transsion/camera/feature/makeup/R$color;->mu_item_unselected_color_black:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 334
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sStates:[[I

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v0, v6, p2

    aput v2, v6, v1

    invoke-direct {v3, v4, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateList:Landroid/content/res/ColorStateList;

    .line 335
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v3, v5, [I

    aput v0, v3, p2

    aput p1, v3, v1

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mStateListBlack:Landroid/content/res/ColorStateList;

    .line 336
    new-instance p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    .line 338
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_3

    .line 340
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FACE_BEAUTY_INFO_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v5, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    const-string v2, "whiten"

    .line 341
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v3, v3, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v7, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 344
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    sget v8, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_arrow:I

    sget v9, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_arrow_black:I

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Ljava/lang/String;Ljava/lang/String;III)V

    .line 345
    iput v0, v1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 346
    iput-boolean p2, v1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 347
    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, p2

    :goto_1
    if-ge v3, v2, :cond_0

    .line 349
    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->SKIN_COLOR_LIST:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v8, v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 350
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v9, v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 351
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v10, v5, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 352
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 353
    new-instance v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    const/4 v12, 0x1

    move-object v6, v4

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 354
    iput v3, v4, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->position:I

    .line 355
    iput-object v1, v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->group:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 356
    invoke-virtual {v1, v4}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 358
    :cond_0
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;

    sget v3, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_footer:I

    sget v4, Lcom/transsion/camera/feature/makeup/R$drawable;->ic_multi_fb_skin_footer_black:I

    invoke-direct {v2, p0, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Footer;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;II)V

    .line 359
    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->addSubItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    .line 360
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_2

    :cond_1
    const-string v2, "reset"

    .line 361
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$1;)V

    .line 363
    iput v0, v2, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 364
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v4, v4, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->title:Ljava/lang/String;

    .line 365
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v1, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    iput v1, v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Reset;->drawableId:I

    .line 366
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_2

    .line 368
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v5, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->featureId:I

    .line 369
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget-object v6, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->key:Ljava/lang/String;

    .line 370
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v7, v2, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->drawableId:I

    .line 371
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;

    iget v1, v1, Lcom/transsion/camera/feature/mode/makeup/data/FaceBeautyExItemInfo;->titleId:I

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 372
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 373
    iput v0, v1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->id:I

    .line 374
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->addItem(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 378
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    new-instance p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$7;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->setExpandableToggleListener(Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter$ExpandableToggleListener;)V

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 91
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->showDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateSeekBarUI()V

    return-void
.end method

.method static synthetic access$1800()Ljava/util/Map;
    .locals 1

    .line 91
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->sBlackIconMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Landroid/content/Context;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method private getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 514
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/lit8 p0, p0, 0x65

    .line 515
    sget-object p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0
.end method

.method private getSkinColor()Ljava/lang/String;
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "white"

    .line 519
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideAutoHint()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz p0, :cond_0

    .line 255
    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 272
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 274
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    .line 276
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDataStoreResetValue()V

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateExpandState$2(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V
    .locals 5

    .line 559
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez v0, :cond_0

    return-void

    .line 562
    :cond_0
    instance-of v1, p1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    if-nez v1, :cond_1

    return-void

    .line 565
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;

    .line 566
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Group;->key:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_expand"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 567
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-virtual {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 569
    iput-boolean v0, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 570
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->expand(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    goto :goto_0

    .line 572
    :cond_2
    iput-boolean v2, p1, Lcom/transsion/camera/feature/mode/makeup/adapter/Item;->isExpand:Z

    .line 573
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->collapse(Lcom/transsion/camera/feature/mode/makeup/adapter/Item;)V

    :goto_0
    return-void
.end method

.method private showAutoHint(Ljava/lang/String;)V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 3

    .line 260
    sget-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 263
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 269
    :cond_2
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 270
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_message:I

    .line 271
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_negative_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda1;-><init>()V

    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_face_beauty_dailog_Positive_title:I

    new-instance v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    .line 273
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 280
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->show()V

    return-void
.end method

.method private updateDataStoreResetValue()V
    .locals 3

    .line 292
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateState()V

    return-void
.end method

.method private updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 428
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    .line 429
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultValue,isSupport:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceAttributeSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",skinColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",gender:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 430
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceAttributeSupport:Z

    const-string v3, "0"

    const-string v4, "black"

    const-string v5, "white"

    const-string v6, "1"

    if-eqz v2, :cond_b

    .line 431
    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 432
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 433
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 434
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto/16 :goto_0

    .line 436
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto/16 :goto_0

    .line 438
    :cond_1
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 439
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 440
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto/16 :goto_0

    .line 442
    :cond_2
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    goto/16 :goto_0

    .line 445
    :cond_3
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 446
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto/16 :goto_0

    .line 448
    :cond_4
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    goto/16 :goto_0

    .line 451
    :cond_5
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 452
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 453
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 454
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_MALE:[Ljava/lang/String;

    goto :goto_0

    .line 456
    :cond_6
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_LIGHT_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_0

    .line 458
    :cond_7
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 459
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 460
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_MALE:[Ljava/lang/String;

    goto :goto_0

    .line 462
    :cond_8
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_0

    .line 465
    :cond_9
    invoke-static {v6, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 466
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_MALE:[Ljava/lang/String;

    goto :goto_0

    .line 468
    :cond_a
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN_FEMALE:[Ljava/lang/String;

    goto :goto_0

    .line 473
    :cond_b
    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_e

    .line 474
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 475
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_LIGHT_SKIN:[Ljava/lang/String;

    goto :goto_0

    .line 476
    :cond_c
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 477
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_DARK_SKIN:[Ljava/lang/String;

    goto :goto_0

    .line 479
    :cond_d
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FRONT_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    goto :goto_0

    .line 481
    :cond_e
    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 482
    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_0

    .line 484
    :cond_f
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 485
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_DARK_SKIN:[Ljava/lang/String;

    goto :goto_0

    .line 487
    :cond_10
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->BACK_CAMERA_BROWN_SKIN:[Ljava/lang/String;

    .line 493
    :cond_11
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p3

    const-string v2, "soften"

    invoke-virtual {p1, v2, p2, p3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateDefaultValue,softenInitValue:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "updateDefaultValue,whiten:10,soften:15,face:20,eye:15,cutFace:0,nose:30,head:0"

    .line 495
    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    move p2, p1

    .line 497
    :goto_1
    sget-object p3, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_KEY_ARRAY:[Ljava/lang/String;

    array-length v1, p3

    if-ge p2, v1, :cond_14

    .line 498
    aget-object p3, p3, p2

    const-string v1, "whiten"

    .line 499
    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 500
    aget-object v1, v0, p2

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getKeyFromWhitenValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    aget-object v2, v0, p2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x65

    .line 502
    sget-object v4, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_WHITEN_KEY_ARRAY:[Ljava/lang/String;

    array-length v5, v4

    move v6, p1

    :goto_2
    if-ge v6, v5, :cond_13

    aget-object v7, v4, v6

    .line 503
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 504
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v10}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v7, v9, v10, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 506
    :cond_12
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v9, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v9}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v3, v9, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 510
    :cond_13
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    aget-object v2, v0, p2

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p3, v2, v4, p1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method

.method private updateExpandState()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    const v1, 0xfa01

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ItemAdapter;->getItems(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;)V

    .line 558
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateSeekBarUI()V
    .locals 6

    .line 742
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const-string v1, "aiv2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideAutoHint()V

    .line 747
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 748
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v0, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 749
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v1, :cond_3

    const/4 v2, 0x2

    .line 750
    invoke-interface {v1, v2, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 751
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 v2, 0x64

    invoke-interface {v1, v2, v4, v4, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(IIII)V

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v4, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_1

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    .line 756
    invoke-interface {v0, v1, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 757
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v4, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_1

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz v0, :cond_3

    .line 762
    invoke-interface {v0, v3, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 763
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v4, v4}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateSelectedItemByKey()V
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSetting(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V
    .locals 5

    .line 794
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateWhite(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V

    .line 795
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$1700(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_default_feature"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 796
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$1400(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 798
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$1400(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "aiv2"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 799
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 801
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateState()V
    .locals 4

    .line 407
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "face_beauty_default_feature"

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 410
    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 413
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateUIStateByKey(Ljava/lang/String;I)V

    return-void
.end method

.method private updateUIStateByKey(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 298
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/feature/makeup/R$string;->multi_fb_hint_ai_enbale:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->showAutoHint(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideAutoHint()V

    .line 302
    :goto_0
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 303
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, p2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 304
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p2, :cond_4

    .line 305
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    if-nez v1, :cond_1

    .line 306
    invoke-interface {p2, v0, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 308
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p2, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/16 p2, 0x64

    invoke-interface {p0, p2, v2, v2, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyProgress(IIII)V

    goto :goto_1

    :cond_2
    const-string p2, "aiv2"

    .line 311
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_4

    const/4 p2, 0x3

    .line 313
    invoke-interface {p1, p2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_1

    .line 318
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    if-eqz p1, :cond_4

    .line 319
    invoke-interface {p1, v3, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifyState(IZ)V

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {p0, v2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateWhite(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)V
    .locals 7

    if-eqz p1, :cond_4

    .line 771
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;->access$1400(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$Child;)Ljava/lang/String;

    move-result-object p1

    .line 772
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

    .line 774
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 775
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 786
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 787
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0x12f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 782
    :pswitch_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 783
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v0, v0, 0xca

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, v0, p0, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 778
    :pswitch_3
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    sget-object v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 779
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v0, v0, 0x65

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

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

    .line 632
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_0

    .line 633
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public hideDialog()V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 419
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 420
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->fb_rv:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 421
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 422
    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/animator/LocalItemAnimator;-><init>()V

    .line 423
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 424
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public openContrast()V
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 625
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mOriginValue:Ljava/lang/String;

    .line 626
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "contrast_on"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public progressChanged(I)V
    .locals 5

    .line 599
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->CUSTOM_DEFAULT_MAP:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 603
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "neutral"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "brown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "warm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "cold"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    const-string v0, "whiten"

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 605
    :pswitch_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 614
    :pswitch_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0x12f

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 611
    :pswitch_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit16 v3, p1, 0xca

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 608
    :pswitch_3
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    add-int/lit8 v3, p1, 0x65

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 618
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, p1, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 619
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p1, "custom"

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    nop

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

.method public registerSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 5

    .line 524
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "setSettingDevice+"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 525
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 526
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 527
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-static {v1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->getFacing(Ljava/lang/String;)I

    move-result v2

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSettingDevice,cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",facing:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 530
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    .line 531
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "soften"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 532
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "face_beauty_default_feature"

    invoke-virtual {v1, v4, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 536
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 537
    sget-object v2, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->FEATURE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 538
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    .line 540
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mCurrentFeatureKey:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "off"

    if-ne v1, v3, :cond_2

    .line 541
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    invoke-interface {v1, v2, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;->notifySelect(IZ)V

    .line 545
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateExpandState()V

    .line 546
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateSelectedItemByKey()V

    .line 547
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$8;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$8;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;Lcom/transsion/camera/app/common/setting/ISetting;)V

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->of(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$IStoreStrategy;)Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 552
    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    const-string p0, "setSettingDevice-"

    .line 553
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .line 1077
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 594
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    return-void
.end method

.method public unregisterSettingDevice(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 580
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideDialog()V

    .line 581
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->hideAutoHint()V

    const/4 p1, 0x0

    .line 582
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mITopUI:Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;

    .line 583
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 584
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mFaceBeautySetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

.method public updateDataStoreValue()V
    .locals 3

    .line 289
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->getSkinColor()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mLensFacing:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mGender:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateDefaultValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateFeatureUI(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 640
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->isClickDialog:Z

    .line 641
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->updateState()V

    .line 642
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 644
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method updateLowLight(Z)V
    .locals 0

    .line 1081
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot;->mRecyclerViewAdapter:Lcom/transsion/camera/feature/mode/makeup/ui/FaceBeautyExRoot$RecyclerViewAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/ExpandableItemAdapter;->updateLowLight(Z)V

    return-void
.end method

.method public updateValueChange(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
