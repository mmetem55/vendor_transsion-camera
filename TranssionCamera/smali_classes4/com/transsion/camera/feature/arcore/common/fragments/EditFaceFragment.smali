.class public Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;
.super Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;
.source "EditFaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;,
        Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ViewPagerAdapter;,
        Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;
    }
.end annotation


# static fields
.field private static final ALL_TAB_ICONS_RES:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final TITLE_BEARD_INDEX:I = 0x5

.field public static final TITLE_CLOTHES_INDEX:I = 0xc

.field public static final TITLE_EYEBROW_INDEX:I = 0x6

.field public static final TITLE_EYELASH_INDEX:I = 0x7

.field public static final TITLE_EYEPUPIL_INDEX:I = 0x8

.field public static final TITLE_EYE_INDEX:I = 0x2

.field public static final TITLE_FACEMAKE_INDEX:I = 0x9

.field public static final TITLE_FACE_INDEX:I = 0x1

.field public static final TITLE_GLASSES_INDEX:I = 0xa

.field public static final TITLE_HAIR_INDEX:I = 0x0

.field public static final TITLE_HAT_INDEX:I = 0xb

.field public static final TITLE_MOUTH_INDEX:I = 0x3

.field public static final TITLE_NOSE_INDEX:I = 0x4

.field public static final TITLE_SHOE_INDEX:I = 0xd

.field private static sCreateFeature:Z


# instance fields
.field private mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field private mBackBtn:Landroid/widget/ImageView;

.field private mBaseFragments:[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

.field mColorValuesChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

.field private mCurrentBeardIndex:I

.field private mCurrentGlassIndex:I

.field private mCurrentHairIndex:I

.field private mCurrentHatIndex:I

.field private mDefaultAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field private mDefaultIndex:I

.field private mEditFaceParameter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;

.field mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

.field private mEntryAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field private mEntryModuleId:I

.field private mGender:I

.field private mGlassItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

.field private mHairItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

.field private mHatItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

.field mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

.field private mLastBeardIndex:I

.field private mLastGlassIndex:I

.field private mLastHairIndex:I

.field private mLastHatIndex:I

.field private mLoadingDialog:Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;

.field private mMainHandler:Landroid/os/Handler;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field private mSaveBtn:Landroid/widget/ImageView;

.field private mScaleType:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

.field private mTabIcons:[Ljava/lang/Integer;

.field private mTabLayout:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

.field private mTitleId:[I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static synthetic $r8$lambda$rzH5ZOh1cK9xg3LVjRNFtVrFzgw(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->lambda$initViewAndData$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditFaceFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 62
    sput-boolean v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->sCreateFeature:Z

    const/16 v1, 0xe

    new-array v1, v1, [I

    .line 80
    sget v2, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_hair_icon:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_face_icon:I

    aput v2, v1, v0

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_eye_icon:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_mouth_icon:I

    const/4 v2, 0x3

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_nose_icon:I

    const/4 v2, 0x4

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_beard_icon:I

    const/4 v2, 0x5

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_eyebrow_icon:I

    const/4 v2, 0x6

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_eyelash_icon:I

    const/4 v2, 0x7

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_eyepupil_icon:I

    const/16 v2, 0x8

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_facemake_icon:I

    const/16 v2, 0x9

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_glasses_icon:I

    const/16 v2, 0xa

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_hat_icon:I

    const/16 v2, 0xb

    aput v0, v1, v2

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_clothes_icon:I

    const/16 v2, 0xc

    aput v0, v1, v2

    const/16 v2, 0xd

    aput v0, v1, v2

    sput-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->ALL_TAB_ICONS_RES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;-><init>()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mMainHandler:Landroid/os/Handler;

    .line 123
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->TOP:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mScaleType:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    .line 507
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$4;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    .line 593
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$5;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mColorValuesChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    .line 690
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$6;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

    .line 698
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$7;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mBaseFragments:[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    return-object p0
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mHatItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->saveAvatar()V

    return-void
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEntryAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Lcom/faceunity/pta_art/entity/AvatarPTA;ZZ)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->exit(Lcom/faceunity/pta_art/entity/AvatarPTA;ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentHairIndex:I

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentHairIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentHatIndex:I

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentHatIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mDefaultIndex:I

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastHatIndex:I

    return p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastHatIndex:I

    return p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentBeardIndex:I

    return p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentBeardIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentGlassIndex:I

    return p0
.end method

.method static synthetic access$1902(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentGlassIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEditFaceParameter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastGlassIndex:I

    return p0
.end method

.method static synthetic access$2002(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastGlassIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastBeardIndex:I

    return p0
.end method

.method static synthetic access$2102(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastBeardIndex:I

    return p1
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastHairIndex:I

    return p0
.end method

.method static synthetic access$2202(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastHairIndex:I

    return p1
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mGender:I

    return p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->updateSaveBtn()V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->hideSaveDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLoadingDialog:Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabLayout:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)[Ljava/lang/Integer;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabIcons:[Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mScaleType:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    return-object p0
.end method

.method static synthetic access$502(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;)Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mScaleType:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->updateExpression(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mHairItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mGlassItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    return-object p0
.end method

.method private backToFaceEmojiFragment(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 2

    .line 852
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p0, v0, p1, v1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;Z)I

    return-void
.end method

.method private backToPrevFragment(Lcom/faceunity/pta_art/entity/AvatarPTA;Z)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEntryModuleId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;Z)I

    return-void
.end method

.method private checkSelectPos(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 669
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    move v1, v0

    .line 672
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 673
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;

    if-eqz v2, :cond_4

    .line 674
    iget-object v3, v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;->paramMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    goto :goto_2

    .line 676
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 677
    iget-object v5, v2, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/ParamRes;->paramMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    iget-object v6, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEditFaceParameter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;

    invoke-virtual {v6, v4}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->getParamByKey(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v2, v0

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return v0
.end method

.method private exit(Lcom/faceunity/pta_art/entity/AvatarPTA;ZZ)V
    .locals 4

    .line 792
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->isRequestEditFaceModule()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 793
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->receiveCancelVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->backToFaceEmojiFragment(Lcom/faceunity/pta_art/entity/AvatarPTA;)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 800
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "avatar_id"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 802
    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 803
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->notifyDoneAddAvatar(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 805
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->notifyDoneAddAvatar(Ljava/lang/String;)V

    .line 807
    :goto_0
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void

    .line 813
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->backToPrevFragment(Lcom/faceunity/pta_art/entity/AvatarPTA;Z)V

    return-void
.end method

.method private getCallerPackage()Ljava/lang/String;
    .locals 1

    .line 841
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 843
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "package"

    .line 844
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCreateFeature()Z
    .locals 1

    .line 882
    sget-boolean v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->sCreateFeature:Z

    return v0
.end method

.method private getRequestId()Ljava/lang/String;
    .locals 1

    .line 833
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 835
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "request_id"

    .line 837
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideSaveDialog()V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLoadingDialog:Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLoadingDialog:Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    const/4 v0, 0x0

    .line 722
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLoadingDialog:Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;

    :cond_0
    return-void
.end method

.method private initFragmentData(I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 256
    invoke-static {v4, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v5

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    invoke-static {v4, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_0

    .line 257
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v5, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    invoke-direct {v5}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;-><init>()V

    iput-object v5, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mHairItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    .line 259
    iget-object v5, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v5}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairIndex()I

    move-result v5

    iput v5, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentHairIndex:I

    .line 260
    iget-object v8, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mHairItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    sget-object v9, Lcom/faceunity/pta_art/constant/ColorConstant;->hair_color:[[D

    iget-object v5, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v5}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairColorValue()D

    move-result-wide v10

    double-to-int v10, v10

    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mColorValuesChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    .line 261
    invoke-static {v6, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v12

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHairIndex()I

    move-result v13

    iget-object v14, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    .line 260
    invoke-virtual/range {v8 .. v14}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;->initData([[DILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V

    .line 262
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1, v7}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setDualHairColor(Z)V

    .line 263
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mHairItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditColorItemFragment;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;-><init>()V

    .line 268
    iget-object v5, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v5}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSkinColorValue()D

    move-result-wide v8

    const/4 v5, -0x1

    .line 270
    iget-object v10, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v10}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSkinColorValue()D

    move-result-wide v10

    const-wide/16 v16, 0x0

    cmpg-double v10, v10, v16

    if-gez v10, :cond_1

    .line 271
    iget-object v5, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const-string v10, "skin_color_index"

    invoke-interface {v5, v10}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getItemIndexFromController(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 273
    :cond_1
    iget-object v8, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v8}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getSkinColorValue()D

    move-result-wide v8

    :goto_0
    move-wide v12, v8

    .line 275
    sget-object v9, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamFace:Ljava/util/List;

    iget-object v10, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

    invoke-direct {v0, v9}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->checkSelectPos(Ljava/util/List;)I

    move-result v11

    sget-object v14, Lcom/faceunity/pta_art/constant/ColorConstant;->skin_color:[[D

    iget-object v15, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mColorValuesChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    move-object v8, v1

    move-wide/from16 v18, v12

    move-object v12, v14

    move-wide/from16 v13, v18

    invoke-virtual/range {v8 .. v15}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->initDate(Ljava/util/List;Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;I[[DDLcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;)V

    move-wide/from16 v8, v18

    .line 276
    invoke-virtual {v1, v8, v9, v5}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->setColorPickGradient(DI)D

    .line 280
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v5, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-direct {v5}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;-><init>()V

    .line 284
    sget-object v9, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamEye:Ljava/util/List;

    iget-object v10, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

    invoke-direct {v0, v9}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->checkSelectPos(Ljava/util/List;)I

    move-result v11

    sget-object v12, Lcom/faceunity/pta_art/constant/ColorConstant;->iris_color:[[D

    iget-object v8, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v8}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIrisColorValue()D

    move-result-wide v13

    iget-object v15, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mColorValuesChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    move-object v8, v5

    invoke-virtual/range {v8 .. v15}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->initDate(Ljava/util/List;Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;I[[DDLcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;)V

    .line 285
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x3

    .line 287
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v8, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-direct {v8}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;-><init>()V

    .line 290
    iget-object v9, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v9}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getLipColorValue()D

    move-result-wide v9

    cmpg-double v9, v9, v16

    if-gez v9, :cond_2

    .line 291
    iget-object v9, v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const-string v10, "lip_color_index"

    invoke-interface {v9, v10}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getItemIndexFromController(Ljava/lang/String;)I

    move-result v9

    int-to-double v9, v9

    goto :goto_1

    .line 294
    :cond_2
    iget-object v9, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v9}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getLipColorValue()D

    move-result-wide v9

    :goto_1
    move-wide/from16 v23, v9

    .line 296
    sget-object v9, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamMouth:Ljava/util/List;

    iget-object v10, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

    invoke-direct {v0, v9}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->checkSelectPos(Ljava/util/List;)I

    move-result v21

    sget-object v22, Lcom/faceunity/pta_art/constant/ColorConstant;->lip_color:[[D

    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mColorValuesChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v25, v11

    invoke-virtual/range {v18 .. v25}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->initDate(Ljava/util/List;Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;I[[DDLcom/transsion/camera/feature/arcore/common/fragments/editface/core/ColorValuesChangeListener;)V

    .line 297
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x4

    .line 299
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v9, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;

    invoke-direct {v9}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;-><init>()V

    .line 301
    iget v10, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mGender:I

    if-nez v10, :cond_3

    sget-object v10, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamMaleNose:Ljava/util/List;

    goto :goto_2

    :cond_3
    sget-object v10, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamFeMaleNose:Ljava/util/List;

    :goto_2
    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEditFaceStatusChaneListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;

    sget-object v12, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->sEditParamMaleNose:Ljava/util/List;

    invoke-direct {v0, v12}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->checkSelectPos(Ljava/util/List;)I

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment;->initDate(Ljava/util/List;Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditShapeItemFragment$EditFaceStatusChaneListener;I)V

    .line 302
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v9, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v9}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v9

    invoke-static {v7, v9}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x5

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v9}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v9

    invoke-static {v7, v9}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 305
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v9, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-direct {v9}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;-><init>()V

    .line 307
    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v11}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v11

    invoke-static {v7, v11}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v7

    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v11}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBeardIndex()I

    move-result v11

    iget-object v12, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    invoke-virtual {v9, v7, v11, v12}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->initData(Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V

    .line 308
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_4
    iget-object v7, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v7}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v7

    invoke-static {v1, v7}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x6

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v7}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v7

    invoke-static {v1, v7}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 313
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    new-instance v7, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-direct {v7}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;-><init>()V

    .line 315
    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v11}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v11

    invoke-static {v1, v11}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v11}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyebrowIndex()I

    move-result v11

    iget-object v12, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    invoke-virtual {v7, v1, v11, v12}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->initData(Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V

    .line 316
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_5
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v5, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    const/4 v7, 0x7

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v5, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 321
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;-><init>()V

    .line 323
    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v11}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v11

    invoke-static {v5, v11}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v5

    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v11}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getEyelashIndex()I

    move-result v11

    iget-object v12, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    invoke-virtual {v1, v5, v11, v12}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->initData(Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V

    .line 324
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_6
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v8, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    const/16 v5, 0x8

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v8, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;-><init>()V

    .line 331
    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v11}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v11

    invoke-static {v8, v11}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v8

    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v11}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getPupilIndex()I

    move-result v11

    iget-object v12, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    invoke-virtual {v1, v8, v11, v12}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->initData(Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V

    .line 332
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_7
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v10, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v10, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/16 v1, 0x9

    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;-><init>()V

    .line 339
    iget-object v8, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v8}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v8

    invoke-static {v10, v8}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v8

    iget-object v10, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v10}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getFacemakeIndex()I

    move-result v10

    iget-object v11, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    invoke-virtual {v1, v8, v10, v11}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->initData(Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V

    .line 340
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_8
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v9, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v9, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 344
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mGlassItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    .line 346
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesIndex()I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentGlassIndex:I

    .line 347
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mGlassItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v6}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v6

    invoke-static {v9, v6}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v6

    iget-object v8, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v8}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGlassesIndex()I

    move-result v8

    iget-object v9, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    invoke-virtual {v1, v6, v8, v9}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->initData(Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V

    .line 352
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mGlassItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_9
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v7, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v7, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/16 v1, 0xb

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatIndex()I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentHatIndex:I

    .line 359
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mHatItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    .line 360
    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v6}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v6

    invoke-static {v7, v6}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v6

    iget-object v7, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v7}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getHatIndex()I

    move-result v7

    iget-object v8, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    invoke-virtual {v1, v6, v7, v8}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->initData(Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V

    .line 364
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mHatItemFragment:Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_a
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v5, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v1

    invoke-static {v5, v1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    const/16 v1, 0xc

    .line 368
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;

    invoke-direct {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;-><init>()V

    .line 370
    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v6}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v6

    invoke-static {v5, v6}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTypeResource(II)Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v6}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getClothesIndex()I

    move-result v6

    iget-object v7, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mItemChangeListener:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;

    invoke-virtual {v1, v5, v6, v7}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceItemFragment;->initData(Ljava/util/List;ILcom/transsion/camera/feature/arcore/common/fragments/editface/core/ItemChangeListener;)V

    .line 371
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabIcons:[Ljava/lang/Integer;

    .line 382
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mBaseFragments:[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    .line 383
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTitleId:[I

    .line 385
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_c

    .line 386
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabIcons:[Ljava/lang/Integer;

    sget-object v5, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->ALL_TAB_ICONS_RES:[I

    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTitleId:[I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v4

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 387
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mBaseFragments:[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    aput-object v5, v1, v4

    .line 388
    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mBaseFragments:[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    aget-object v1, v1, v4

    iget-object v5, v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTitleId:[I

    aget v5, v5, v4

    invoke-direct {v0, v1, v5}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->setArguments(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method

.method private initItemIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 469
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentHairIndex:I

    .line 470
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentGlassIndex:I

    .line 471
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentHatIndex:I

    .line 472
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mCurrentBeardIndex:I

    .line 473
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastHairIndex:I

    .line 474
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastGlassIndex:I

    .line 475
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastHatIndex:I

    .line 476
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLastBeardIndex:I

    .line 477
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mDefaultIndex:I

    return-void
.end method

.method private initViewAndData(Landroid/view/View;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->getCutoutHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 227
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->edit_face_tab_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->getNavigationHeight()I

    move-result v2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 233
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->edit_face_save:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mSaveBtn:Landroid/widget/ImageView;

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->edit_face_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mBackBtn:Landroid/widget/ImageView;

    .line 236
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->initItemIndex()V

    .line 239
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "new EditFaceParameter.init --- start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEditFaceParameter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;

    const-string v1, "new EditFaceParameter.init --- end"

    .line 242
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->initFragmentData(I)V

    .line 244
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->initViewPager(Landroid/view/View;)V

    .line 245
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->updateSaveBtn()V

    return-void
.end method

.method private initViewPager(Landroid/view/View;)V
    .locals 3

    .line 413
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->edit_face_tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabLayout:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    .line 414
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabLayout:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result v2

    invoke-static {v1}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->setContentMargin(II)V

    .line 416
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabLayout:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result v2

    invoke-static {v1}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->setItemMargin(II)V

    goto :goto_0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabLayout:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result v2

    invoke-static {v1}, Lcom/transsion/camera/utils/ResourceUtils;->dpInt(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->setItemMargin(II)V

    .line 420
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabLayout:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabIcons:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->setDataList(Ljava/util/List;)V

    .line 421
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->edit_face_bottom_viewpager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 422
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 463
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ViewPagerAdapter;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 464
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mTabLayout:Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomTabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    return-void
.end method

.method private isChangeValues()Z
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEditFaceParameter:Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditFaceParameter;->isShapeChangeValues()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mDefaultAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v0, p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->compare(Lcom/faceunity/pta_art/entity/AvatarPTA;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$initViewAndData$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private notifyDoneAddAvatar(Ljava/lang/String;)V
    .locals 5

    .line 817
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDoneAddAvatar() called with: avatarId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 821
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->getCallerPackage()Ljava/lang/String;

    move-result-object v2

    .line 822
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 823
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 824
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.transsion.intent.action.CAMERA_AR_AVATAR_ADDED"

    .line 825
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->getRequestId()Ljava/lang/String;

    move-result-object p0

    const-string v4, "request_id"

    invoke-virtual {v3, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "avatar_id"

    .line 827
    invoke-virtual {v3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    invoke-virtual {v1, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 829
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "notifyDoneAddAvatar(): callerPackage = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private saveAvatar()V
    .locals 3

    .line 734
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isReachLimitedAvatar()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->showSaveDialog()V

    .line 736
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getExpressionIndex()I

    const/4 v0, 0x0

    .line 737
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->updateExpression(I)V

    .line 738
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->resetAll(Z)V

    .line 739
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$8;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V

    return-void
.end method

.method private setArguments(Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;I)V
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->setAvatarP2A(Lcom/faceunity/pta_art/entity/AvatarPTA;)V

    .line 407
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "EditFaceBaseFragment_ID"

    .line 408
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private showSaveDialog()V
    .locals 2

    .line 715
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mLoadingDialog:Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;

    .line 716
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v1, Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/LoadingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateExpression(I)V
    .locals 1

    .line 875
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getExpressionIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {v0, p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setExpressionIndex(I)V

    .line 877
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Z)V

    :cond_0
    return-void
.end method

.method private updateSaveBtn()V
    .locals 2

    .line 864
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->isChangeValues()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mSaveBtn:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 866
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mSaveBtn:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mSaveBtn:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 869
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mSaveBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isNeedExecutePendingTransactions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "entry_moduleid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEntryModuleId:I

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "entry_avatarpta"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEntryAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "new_avatar_gender"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mGender:I

    .line 159
    invoke-static {p1}, Lcom/faceunity/pta_art/constant/ResourceJson;->getTemplateAvatar(I)Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mDefaultAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 160
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->clone()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    .line 161
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getGender()I

    move-result v0

    invoke-static {v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getInitialHairIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setHairIndex(I)V

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->isInited()Z

    move-result p1

    if-nez p1, :cond_0

    .line 163
    sget-object p1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[onActivityCreated], init EditParamFactory again if restart activity in some case!"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/core/shape/EditParamFactory;->init(Landroid/content/Context;)V

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->initViewAndData(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 6

    .line 482
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->isChangeValues()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;-><init>()V

    .line 484
    sget v2, Lcom/transsion/camera/feature/arcore/R$string;->add_avatar_content:I

    sget v3, Lcom/transsion/camera/feature/arcore/R$string;->add_avatar_confirm:I

    sget v4, Lcom/transsion/camera/feature/arcore/R$string;->delete_avatar_cancel:I

    new-instance v5, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;

    invoke-direct {v5, p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$3;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;)V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->setConfirmListener(IIILcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog$ConfirmListener;)V

    .line 499
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object v2, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 501
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->setCreateFeature(Z)V

    .line 502
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mEntryAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-direct {p0, v2, v1, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->exit(Lcom/faceunity/pta_art/entity/AvatarPTA;ZZ)V

    :goto_0
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->fragment_edit_face_fold:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->fragment_edit_face:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 221
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 222
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->TOP:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mScaleType:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 204
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onPause()V

    .line 205
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const-string v0, "quit_facepup_mode"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->setItemParamToController(Ljava/lang/String;D)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 171
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onResume()V

    .line 172
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$11;->$SwitchMap$com$transsion$camera$feature$arcore$common$fragments$EditFaceFragment$ScaleType:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mScaleType:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->resetAllMin(Z)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->resetAll(Z)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->resetAllTop(Z)V

    .line 183
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "lily onResume updateAvatarPTA"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-interface {v0, v3, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Z)V

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;)V

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V

    return-void
.end method

.method public onScale(D)V
    .locals 3

    .line 892
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScale] , scale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$9;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;D)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V

    return-void
.end method

.method public onScroll(DD)V
    .locals 3

    .line 908
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onScroll] , rotDelta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " ,translateDelta = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 909
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    new-instance p4, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$10;

    invoke-direct {p4, p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$10;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;D)V

    const/4 p0, 0x0

    invoke-interface {p3, p4, p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V

    return-void
.end method

.method public releaseResource()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mBaseFragments:[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->mBaseFragments:[Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 396
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/editface/EditFaceBaseFragment;->releaseResource()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCreateFeature(Z)V
    .locals 0

    .line 886
    sput-boolean p1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;->sCreateFeature:Z

    return-void
.end method
