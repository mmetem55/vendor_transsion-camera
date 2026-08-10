.class public abstract Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;
.super Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;
.source "CommonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;
    }
.end annotation


# static fields
.field private static final AUDIO_CARTOON:I = 0x4

.field private static final AUDIO_ECHO:I = 0x3

.field private static final AUDIO_FEMAL:I = 0x2

.field private static final AUDIO_MALE:I = 0x1

.field private static final AUDIO_MONSTER:I = 0x5

.field private static final AUDIO_ORIGINAL:I = 0x0

.field protected static final OUT_RECT_BOTTOM:I = 0x0

.field protected static final OUT_RECT_LEFT:I = 0xc

.field protected static final OUT_RECT_RIGHT:I = 0xc

.field protected static final OUT_RECT_TOP:I = 0x0

.field private static final SPRING_SCALE_OFF_FINAL_POS:F = 1.75f

.field private static final SPRING_SCALE_ON_FINAL_POS:F = 1.376f

.field private static final SPRING_STIFFNESS:F = 5000.0f

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TRANSLATE_ANIMATION_DURATION:I = 0x258

.field private static final X_COORDINATE_ZERO:I


# instance fields
.field protected mArCoreSwitchButton:Landroid/view/View;

.field protected mArcoreMemoryHintLayout:Landroid/widget/FrameLayout;

.field private mAudioAdapterListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mAudioIconAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;

.field private final mAudioItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/widgets/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPosition:I

.field protected mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mBgChangeIconLeftMargin:I

.field private mBundleRecyclerState:Z

.field protected mCameraSwitchButton:Landroid/view/View;

.field protected final mCaptureCallback:Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;

.field protected mChangeBgButton:Landroid/widget/ImageView;

.field protected mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

.field protected mChangeFigureButton:Landroid/widget/ImageView;

.field protected mChangeMusicButton:Landroid/widget/ImageView;

.field protected mChangeRootView:Landroid/view/View;

.field protected mChangeViewBottom:I

.field protected mChangeViewSelectBottom:I

.field private mClicked:Z

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field protected mFacemojiSwitchButton:Landroid/view/View;

.field protected mFunctionButton:Landroid/view/View;

.field protected mGalleryButton:Landroid/view/View;

.field protected mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

.field protected mGridView:Landroid/view/View;

.field private final mGridViewTouch:Landroid/view/View$OnTouchListener;

.field protected mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

.field protected mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

.field private mIsAnimating:Z

.field protected mIsInEdit:Z

.field protected mIsInEditFragment:Z

.field private mIsOnPuase:Z

.field private mIsPlaneAnimationMoving:Z

.field protected mIsRecording:Z

.field private mIsSupportArcore:Z

.field private mListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field protected mModuleCloseButton:Landroid/widget/ImageView;

.field private mModuleSelectView:Landroid/view/View;

.field private mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

.field protected mPlane:Landroid/view/View;

.field private mPlaneVisibility:I

.field protected mPreviewCover:Landroid/widget/ImageView;

.field private mRootView:Landroid/view/View;

.field protected mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

.field protected mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

.field protected volatile mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mTipsText:Landroid/widget/TextView;

.field private mToastHint:Landroid/widget/TextView;

.field private mToastView:Landroid/view/View;

.field protected mTopbar:Landroid/view/View;

.field protected mVoiceEffectView:Landroid/view/View;

.field private mVoiceType:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$K10rZ1TC7EKkDwTaOB4S4CJDgjg(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->lambda$sharedViewInit$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CommonFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsInEdit:Z

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsOnPuase:Z

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsAnimating:Z

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsSupportArcore:Z

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mClicked:Z

    .line 92
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsPlaneAnimationMoving:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsInEditFragment:Z

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mBundleRecyclerState:Z

    .line 142
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioItemList:Ljava/util/List;

    .line 153
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 170
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$3;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mCaptureCallback:Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;

    .line 360
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$5;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridViewTouch:Landroid/view/View$OnTouchListener;

    .line 372
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$6;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioAdapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsAnimating:Z

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioIconAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->showHint()V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleSelectView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlaneVisibility:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->resetViewStatusFold()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->doTranslationYdownAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->selectVoiceType(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Lcom/transsion/camera/app/common/storage/DataStore;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsPlaneAnimationMoving:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsOnPuase:Z

    return p0
.end method

.method static synthetic access$900()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private doTranslationYdownAnimation()V
    .locals 10

    .line 563
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x190

    .line 564
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/feature/arcore/R$dimen;->icon_translation_y:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/arcore/R$dimen;->background_translation_y:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    new-instance v8, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$8;

    invoke-direct {v8, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$8;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    .line 583
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 564
    invoke-static/range {v0 .. v9}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->translationYDownAnimation(Landroid/view/View;Landroid/view/View;FFJFFLandroid/animation/Animator$AnimatorListener;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 584
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mClicked:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private handIconClick(Landroid/widget/ImageView;)V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onChangeButton(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->selectedIcon(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 546
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTipsText:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/feature/arcore/R$string;->select_background:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onChangeButton(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 549
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->selectedIcon(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 550
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTipsText:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/feature/arcore/R$string;->select_figure:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 552
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onChangeButton(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 553
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->selectedIcon(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 554
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTipsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$string;->select_metaphone_effects:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 558
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private handleSwitchCamera()V
    .locals 4

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v3, v3}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(IZ)V

    .line 458
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    invoke-interface {p0, v3, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(IZ)V

    .line 461
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I

    :goto_0
    return-void
.end method

.method private isBundleRecyclerState(Landroid/view/View;)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mBundleRecyclerState:Z

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 500
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mBundleRecyclerState:Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$sharedViewInit$0(Landroid/view/View;)V
    .locals 0

    .line 281
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onPressBack()V

    return-void
.end method

.method private planeNotVisibleOnClick(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    .line 519
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f6b851f    # 0.92f

    const-wide/16 v3, 0x190

    move-object/from16 v5, p2

    .line 521
    invoke-static {v5, v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->startBackgroundAndFeatureAndMusicIconAnimation(Landroid/widget/ImageView;FFJ)V

    .line 523
    iget-object v6, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    iget-object v7, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    .line 524
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/arcore/R$dimen;->icon_translation_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/arcore/R$dimen;->background_translation_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    iget-object v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v17

    const v8, 0x3f6b851f    # 0.92f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const-wide/16 v14, 0x190

    move-object/from16 v16, v1

    .line 523
    invoke-static/range {v5 .. v17}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->translationYUpAnimation(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;FFFFFFJLandroid/animation/Animator$AnimatorListener;Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 526
    iput-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mClicked:Z

    return-void
.end method

.method private planeVisibleOnClick(Landroid/view/View;)V
    .locals 2

    .line 507
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mClicked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->doTranslationYdownAnimation()V

    .line 509
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mClicked:Z

    goto :goto_0

    .line 511
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mBundleRecyclerState:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->translateView(Landroid/view/View;Z)V

    const/4 p1, 0x1

    .line 513
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mClicked:Z

    :goto_0
    return-void
.end method

.method private resetViewStatusFold()V
    .locals 2

    .line 908
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 909
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 911
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleSelectView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private selectVoiceType(I)V
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Monster Voice"

    .line 425
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 426
    sget p1, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_monster_changed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 427
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_monster_voice_selected_normal:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-string p1, "Cartoon Voice"

    .line 420
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 421
    sget p1, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_cartoon_changed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_cartoon_voice_selected_normal:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string p1, "Audio Echo"

    .line 415
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 416
    sget p1, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_echo_changed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 417
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_echo_voice_selected_normal:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const-string p1, "Female Voice"

    .line 410
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 411
    sget p1, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_female_changed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_female_voice_selected_normal:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const-string p1, "Male Voice"

    .line 405
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 406
    sget p1, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_male_changed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_male_voice_selected_normal:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 400
    :cond_5
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 401
    sget p1, Lcom/transsion/camera/feature/arcore/R$string;->ar_audio_original_changed:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget v1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_music_change_selected_normal:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 433
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$7;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 452
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private selectedIcon(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .line 650
    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 651
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 653
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 655
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 656
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method private setAudioImage(I)V
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Monster Voice"

    .line 316
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 317
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_monster_voice_selected_normal:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const-string p1, "Cartoon Voice"

    .line 312
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_cartoon_voice_selected_normal:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const-string p1, "Audio Echo"

    .line 308
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_echo_voice_selected_normal:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const-string p1, "Female Voice"

    .line 304
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_female_voice_selected_normal:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const-string p1, "Male Voice"

    .line 300
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_male_voice_selected_normal:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    const-string p1, ""

    .line 296
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 297
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_music_change_selected_normal:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private showHint()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArcoreMemoryHintLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArcoreMemoryHintLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 663
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArcoreMemoryHintLayout:Landroid/widget/FrameLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->disappearBackHint(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected cancelReachLimitedAvatar()V
    .locals 1

    .line 941
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sget v0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->MAX_SIZE_OF_AVATAR:I

    if-lt p0, v0, :cond_0

    .line 942
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->createToast()Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/utils/ToastUtil;->disappear()V

    :cond_0
    return-void
.end method

.method protected handleSwitchEmoji()V
    .locals 4

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 467
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsSupportArcore:Z

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(IZ)V

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    invoke-interface {p0, v3, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I

    goto :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v3, 0x4

    invoke-interface {v0, v3, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(IZ)V

    .line 472
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    invoke-interface {p0, v3, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v2, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(IZ)V

    .line 477
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I

    :goto_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 882
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onPressBack()V

    goto :goto_0

    .line 884
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 885
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onRecordingPressBack()V

    goto :goto_0

    .line 887
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.transsion.camera.action.START_SPECIFY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.camera_launch_source"

    const-string v2, "arcore_mode"

    .line 888
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->getLastUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 890
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->getLastUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "ar_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 892
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 893
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 894
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    sget v1, Lcom/transsion/camera/feature/arcore/R$anim;->exit_ar_anim:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onChangeButton(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x8

    .line 530
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 531
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->isBundleRecyclerState(Landroid/view/View;)V

    .line 534
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    iput p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlaneVisibility:I

    .line 535
    iget-object p3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_0

    .line 536
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->planeVisibleOnClick(Landroid/view/View;)V

    goto :goto_0

    .line 538
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->planeNotVisibleOnClick(Landroid/view/View;Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 589
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick mIsAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsAnimating:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->isModuleChanging()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 593
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 594
    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->iv_enter_photo:I

    if-ne v0, v1, :cond_1

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->getLastUri()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->gotoGallery(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 596
    :cond_1
    sget v1, Lcom/transsion/camera/feature/arcore/R$id;->iv_switch_camera:I

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_4

    .line 597
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPreviewCover:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    return-void

    .line 600
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_3

    const-string v0, "front"

    goto :goto_0

    :cond_3
    const-string v0, "back"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 603
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->handleSwitchCamera()V

    goto/16 :goto_1

    .line 604
    :cond_4
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->change_background:I

    const/4 v1, 0x0

    const/16 v3, 0x8

    if-ne v0, p1, :cond_8

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 608
    :cond_5
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsPlaneAnimationMoving:Z

    if-eqz p1, :cond_6

    return-void

    .line 611
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 612
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 614
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 615
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 618
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->handIconClick(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 619
    :cond_8
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->change_figure:I

    if-ne v0, p1, :cond_b

    .line 620
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsPlaneAnimationMoving:Z

    if-eqz p1, :cond_9

    return-void

    .line 623
    :cond_9
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 624
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleSelectView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 628
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->handIconClick(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 629
    :cond_b
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->iv_mode_close:I

    if-ne v0, p1, :cond_c

    .line 630
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onBackPressed()Z

    goto :goto_1

    .line 631
    :cond_c
    sget p1, Lcom/transsion/camera/feature/arcore/R$id;->change_music:I

    if-ne v0, p1, :cond_10

    .line 632
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 635
    :cond_d
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 636
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 637
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 638
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 639
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 642
    :cond_e
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsPlaneAnimationMoving:Z

    if-eqz p1, :cond_f

    return-void

    .line 645
    :cond_f
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->handIconClick(Landroid/widget/ImageView;)V

    :cond_10
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x1

    .line 669
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsOnPuase:Z

    .line 670
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CommonFragment onPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 671
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onPause()V

    return-void
.end method

.method protected onPressBack()V
    .locals 2

    .line 915
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->resetViewStatusFold()V

    return-void

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 920
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsPlaneAnimationMoving:Z

    if-eqz v0, :cond_1

    return-void

    .line 923
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->doTranslationYdownAnimation()V

    .line 924
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 926
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsPlaneAnimationMoving:Z

    if-eqz v0, :cond_3

    return-void

    .line 929
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->doTranslationYdownAnimation()V

    .line 930
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 932
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsPlaneAnimationMoving:Z

    if-eqz v0, :cond_5

    return-void

    .line 935
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->doTranslationYdownAnimation()V

    .line 936
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onRecordingPressBack()V
    .locals 1

    .line 900
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;->onShutterUp()V

    const/4 v0, 0x0

    .line 902
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    .line 903
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {p0, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setIsRecording(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const/4 v0, 0x0

    .line 676
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsOnPuase:Z

    .line 677
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CommonFragment onResume"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 678
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onResume()V

    return-void
.end method

.method public onSingleTapUp()V
    .locals 1

    .line 875
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->panelShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onPressBack()V

    :cond_0
    return-void
.end method

.method protected panelShowing()Z
    .locals 2

    .line 864
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 865
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleSelectView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected sharedViewInit(Landroid/view/View;)V
    .locals 5

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mRootView:Landroid/view/View;

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$dimen;->change_root_bottom_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeViewBottom:I

    .line 184
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$dimen;->change_root_bottom_select_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeViewSelectBottom:I

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$dimen;->change_icon_left_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mBgChangeIconLeftMargin:I

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$bool;->is_support_arcore:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsSupportArcore:Z

    .line 187
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$MyOnShutterEventListener;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    .line 188
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v1, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->setShutterButtonListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->getHintCallback()Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    .line 190
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    .line 191
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$4;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->setConfirmListener(Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog$ConfirmListener;)V

    .line 207
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->fragment_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/widgets/IFragmentRootView;

    .line 208
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/IFragmentRootView;->setModuleOperator(Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;)V

    .line 210
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->top_bar_view_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTopbar:Landroid/view/View;

    .line 211
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTopbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 213
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->getCutoutHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/ScreenUtils;->getWaterfallEdgeSize(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    .line 216
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 217
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTopbar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    :cond_1
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->iv_mode_close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleCloseButton:Landroid/widget/ImageView;

    .line 222
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->iv_arcore_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    .line 224
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->iv_facemoji_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    .line 226
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->iv_enter_photo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGalleryButton:Landroid/view/View;

    .line 228
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->iv_function_camera:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFunctionButton:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGalleryButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->iv_switch_camera:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mCameraSwitchButton:Landroid/view/View;

    .line 231
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mCameraSwitchButton:Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_2

    const-string v0, "front"

    goto :goto_0

    :cond_2
    const-string v0, "back"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mCameraSwitchButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->item_recycler:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    .line 238
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 241
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->shutter_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mOnShutterEventListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setOnShutterEventListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$OnShutterEventListener;)V

    .line 245
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->change_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    .line 246
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->change_figure:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    .line 247
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->change_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    .line 249
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->change_music:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    .line 251
    new-instance v0, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 253
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_audio_icon_position"

    const-string v3, "0"

    .line 252
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioPosition:I

    .line 254
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->setAudioImage(I)V

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->bg_select_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    .line 257
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->backgoud_select_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 258
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->module_select_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 259
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->audio_effect_select_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceEffectView:Landroid/view/View;

    .line 260
    instance-of v1, v0, Landroid/widget/GridView;

    if-eqz v1, :cond_3

    .line 261
    check-cast v0, Landroid/widget/GridView;

    .line 262
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/arcore/R$layout;->audio_effect_item_layout:I

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioItemList:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 263
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioPosition:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/AudioIconAdapter;->updateCurrentPosition(I)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 265
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioAdapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridViewTouch:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    .line 268
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioIconAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;

    goto :goto_1

    .line 269
    :cond_3
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_4

    .line 270
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 271
    new-instance v1, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;

    invoke-direct {v1}, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;-><init>()V

    .line 272
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioItemList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->setList(Ljava/util/List;)V

    .line 273
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioPosition:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->updateCurrentPosition(I)V

    .line 274
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 275
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioAdapterListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ar/manager/VoiceEffectAdapter;->setItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 276
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    .line 277
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioIconAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;

    .line 279
    :cond_4
    :goto_1
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->module_select_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleSelectView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 281
    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    :cond_5
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->voice_hint_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    .line 284
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->tips_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTipsText:Landroid/widget/TextView;

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/arcore/R$layout;->memory_toast:I

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 287
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->hint_memory_full:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hint_text_layout_background"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "hint_auto_normal_max_width"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 290
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->arcore_memory_hint_framelayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArcoreMemoryHintLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected sharedViewUnint()V
    .locals 2

    const/4 v0, 0x0

    .line 324
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTopbar:Landroid/view/View;

    .line 325
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mModuleCloseButton:Landroid/widget/ImageView;

    .line 326
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    .line 327
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    .line 328
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFunctionButton:Landroid/view/View;

    .line 329
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGalleryButton:Landroid/view/View;

    .line 330
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mCameraSwitchButton:Landroid/view/View;

    .line 332
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    .line 333
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    .line 336
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    .line 337
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    .line 338
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    .line 339
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    .line 340
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mPlane:Landroid/view/View;

    .line 341
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 342
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 343
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    .line 344
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAudioIconAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/IAudioAdapter;

    const-string v1, ""

    .line 345
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceType:Ljava/lang/String;

    .line 346
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastView:Landroid/view/View;

    .line 347
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 348
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mToastHint:Landroid/widget/TextView;

    .line 349
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTipsText:Landroid/widget/TextView;

    .line 350
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    if-eqz v1, :cond_1

    .line 351
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 354
    :cond_0
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    .line 356
    :cond_1
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    .line 357
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method public translateView(Landroid/view/View;Z)V
    .locals 2

    .line 482
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGridView:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x258

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 484
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/arcore/R$dimen;->change_option_translation_x:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 483
    invoke-static {p1, p0, v1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->changeOptionAnimation(Landroid/view/View;FFI)V

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/arcore/R$dimen;->change_option_translation_x1:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    .line 487
    invoke-static {p1, p0, v1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->changeOptionAnimation(Landroid/view/View;FFI)V

    :goto_0
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method
