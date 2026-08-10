.class public Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;
.super Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;
.source "FacemojiFragment.java"


# static fields
.field private static final DEFAULT_RATIO:F = 1.0f

.field private static final REMOVE_TIME:I = 0x190

.field private static final SCALE_RATIO:F = 0.8f

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

.field private final mBackgroundItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundItemListFold:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentBackgroundPath:Ljava/lang/String;

.field private mCustomAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

.field private mDeleteTask:Ljava/lang/Runnable;

.field private mFacemojiBackGuideLayout:Landroid/view/View;

.field private mFacemojiEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mFacemojiSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

.field private mFacemojiTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnItemClickListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;

.field private mRootView:Landroid/view/View;

.field private mShowOperationPanel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;-><init>()V

    const-string v0, ""

    .line 67
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mCurrentBackgroundPath:Ljava/lang/String;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mShowOperationPanel:Z

    .line 76
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 83
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiTouchListener:Landroid/view/View$OnTouchListener;

    .line 118
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$3;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mOnItemClickListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;

    .line 126
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$4;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemList:Ljava/util/List;

    .line 135
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$5;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemListFold:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mCurrentBackgroundPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->updateDeleteUI(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mCustomAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->notifyDeleteAvatar(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mDeleteTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mDeleteTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->updateUIByPosition(I)V

    return-void
.end method

.method private animationOnCreate()V
    .locals 9

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/arcore/R$dimen;->recyclerview_translation_y:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v0, v5}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->facemojiRecyclerViewAnimation(Landroid/view/View;F)V

    .line 634
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    sget v7, Lcom/transsion/camera/feature/arcore/R$dimen;->ar_core_icon_translate_fold:I

    invoke-static {v7}, Lcom/transsion/camera/utils/ResourceUtils;->dpRes(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v0, v5, v6, v7}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->twoIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    goto :goto_0

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/camera/feature/arcore/R$dimen;->icon_translation_x:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-static {v0, v5, v6, v7}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->twoIconAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    .line 639
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-static {v0, v5}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->arCoreAndFacemojiChangeAnimation(Landroid/view/View;Landroid/view/View;)V

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-eq v0, v5, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsInEdit:Z

    if-eqz v0, :cond_5

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 645
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    sget v6, Lcom/transsion/camera/feature/arcore/R$dimen;->ar_core_icon_translate_fold:I

    invoke-static {v6}, Lcom/transsion/camera/utils/ResourceUtils;->dpRes(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v0, v1, v2, v6}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->twoIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    goto :goto_1

    .line 648
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/camera/feature/arcore/R$dimen;->icon_translation_x:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v0, v1, v2, v6}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->twoIconAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    .line 651
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/arcore/R$dimen;->recyclerview_translation_y:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->facemojiRecyclerViewAnimation(Landroid/view/View;F)V

    .line 652
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->arCoreSwitchDisappearAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 653
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 654
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    if-le v0, v4, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 655
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    sget v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_6

    sget-boolean v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz v0, :cond_6

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 659
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->facemojiSwitchDisappearAnimation(Landroid/view/View;)V

    goto :goto_2

    .line 661
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result v0

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->arCoreAppearAnimation(Landroid/view/View;)V

    .line 665
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result v0

    if-ne v0, v5, :cond_9

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-eq v0, v4, :cond_c

    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 666
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result v0

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-eq v0, v5, :cond_c

    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 667
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-eq v0, v5, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 668
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 669
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    if-ge v0, v5, :cond_d

    .line 670
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 671
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 672
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 673
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    :cond_d
    return-void
.end method

.method private initAvatar()V
    .locals 5

    .line 176
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "entry_avatarpta"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 177
    :goto_0
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initAvatar] serializable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 10

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 192
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 193
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/arcore/R$string;->open_facemoji:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;->showHint(Ljava/lang/String;IZ)V

    .line 196
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->sharedViewInit(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0, v3}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->setHorizontalRecycleView(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;)V

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v3}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->isInited()Z

    move-result v3

    invoke-interface {v0, v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setIsInit(Z)V

    .line 199
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->facemoji_guid_framelayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiBackGuideLayout:Landroid/view/View;

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTopbar:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/LayoutUtils;->copyMarginParams(Landroid/view/View;Landroid/view/View;)V

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 203
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v3

    invoke-direct {p1, v0, v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;-><init>(Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 205
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    invoke-direct {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mCustomAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    .line 206
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;

    invoke-direct {p1}, Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;-><init>()V

    const-wide/16 v3, 0x190

    .line 207
    invoke-virtual {p1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    new-instance v3, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;

    invoke-direct {v3, p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$6;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;Lcom/transsion/camera/feature/arcore/common/utils/RemoveItemAnimator;)V

    invoke-virtual {v0, v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->setOnItemDeleteListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter$OnItemDeleteListener;)V

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$7;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$7;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$8;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setOnSelectChangeListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;)V

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$9;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$9;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setOnScrolledPositionListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IScrolledInterface;)V

    .line 349
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p1

    const-string v0, "background/static/bg_static_04.png"

    const/4 v3, 0x4

    if-eqz p1, :cond_2

    .line 350
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemListFold:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 351
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemListFold:Ljava/util/List;

    new-instance v4, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    sget v5, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_bg_4:I

    invoke-direct {v4, v5, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 353
    :cond_1
    new-instance p1, Lcom/transsion/camera/ar/manager/ARBackgroundAdapter;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemListFold:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/transsion/camera/ar/manager/ARBackgroundAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    .line 354
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 355
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 359
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemList:Ljava/util/List;

    new-instance v4, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    sget v5, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_bg_4:I

    invoke-direct {v4, v5, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 361
    :cond_3
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemList:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    .line 362
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 363
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 364
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 365
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$10;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$10;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 373
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 374
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mOnItemClickListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;)V

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 376
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_4

    .line 377
    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mBgChangeIconLeftMargin:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 378
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 382
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 383
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/feature/arcore/R$dimen;->ar_core_icon_translate_fold:I

    invoke-static {p1}, Lcom/transsion/camera/utils/ResourceUtils;->dpRes(I)I

    move-result p1

    int-to-float v7, p1

    const-wide/16 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->twoIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;FJ)V

    goto :goto_1

    .line 385
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/transsion/camera/feature/arcore/R$dimen;->icon_translation_x:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 386
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 389
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-eq p1, v0, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 390
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result p1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_8

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-ne p1, v2, :cond_8

    .line 391
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result p1

    if-ne p1, v3, :cond_9

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-eq p1, v2, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 395
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result p1

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-ne p1, v2, :cond_b

    .line 396
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiBackGuideLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiBackGuideLayout:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->disappearBackGuide(Landroid/view/View;)V

    .line 401
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->springAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 402
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 403
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 404
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->animationOnCreate()V

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result p1

    if-le p1, v2, :cond_c

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 407
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result p1

    sget v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_c

    sget-boolean p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 409
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-ne v2, p1, :cond_c

    .line 410
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    return-void
.end method

.method private notifyDeleteAvatar(Ljava/lang/String;)V
    .locals 2

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.transsion.intent.action.CAMERA_AR_AVATAR_DELETED"

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "avatar_id"

    .line 184
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.transsion.videocallenhancer"

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDeleteAvatar: avatarId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateDeleteUI(Z)V
    .locals 3

    .line 605
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsInEdit:Z

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 607
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFunctionButton:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 609
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 614
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mShutterBar:Lcom/transsion/camera/feature/arcore/common/widgets/ShutterBarView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 615
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFunctionButton:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 618
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 619
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result p1

    sget v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    sget-boolean p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz p1, :cond_1

    .line 621
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 623
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateUIByPosition(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mShowOperationPanel:Z

    if-nez v3, :cond_1

    .line 441
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeRootView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    :cond_1
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 445
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 446
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    if-nez v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 449
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 453
    iput-boolean v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mShowOperationPanel:Z

    goto :goto_2

    .line 416
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 417
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 418
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 419
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 420
    iput-boolean v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mShowOperationPanel:Z

    .line 421
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 422
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v6, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$11;

    invoke-direct {v6, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$11;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 429
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 430
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mVoiceEffectView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$12;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$12;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    :goto_2
    if-le p1, v2, :cond_6

    .line 456
    sget v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_6

    sget-boolean p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 457
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-ne v2, p1, :cond_6

    .line 458
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 459
    :cond_6
    sget-boolean p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 460
    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-ne v2, p1, :cond_7

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    .line 461
    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result p1

    if-nez p1, :cond_7

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->initAvatar()V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->initView(Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->setEdit(Z)V

    .line 567
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getSelectedPosition()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v3}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_0

    .line 568
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getSelectedPosition()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTAIndex(I)V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Ljava/lang/Runnable;)V

    .line 571
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->updateDeleteUI(Z)V

    .line 572
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 573
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->panelShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 574
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onPressBack()V

    goto :goto_0

    .line 575
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsRecording:Z

    if-eqz v0, :cond_3

    .line 576
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onRecordingPressBack()V

    goto :goto_0

    .line 578
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.transsion.camera.action.START_SPECIFY_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.systemui.camera_launch_source"

    const-string v4, "arcore_mode"

    .line 579
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v3}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->getLastUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 581
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v3}, Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;->getLastUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "ar_uri"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 583
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 584
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 585
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/transsion/camera/feature/arcore/R$anim;->exit_ar_anim:I

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_0
    return v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->ar_fragment_preview_layout_fold:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->ar_fragment_preview_layout:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mRootView:Landroid/view/View;

    .line 148
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->facemoji_back_guide:I

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    .line 163
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    .line 164
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiBackGuideLayout:Landroid/view/View;

    .line 165
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mCustomAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mCustomAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 169
    :cond_0
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mCustomAlertDialog:Lcom/transsion/camera/feature/arcore/common/widgets/CustomAlertDialog;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 172
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->sharedViewUnint()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 556
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;->hideHint()V

    :cond_0
    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 546
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onPause()V

    .line 550
    invoke-static {}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->cancelShakeAnimation()V

    .line 551
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->cancelReachLimitedAvatar()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 496
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onResume()V

    .line 497
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mGenderSelectDialog:Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/transsion/camera/feature/arcore/common/widgets/GenderSelectDialog;->IsShowing:Z

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v4}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->setDataList(Ljava/util/List;)V

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v4}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setSelectedPosition(I)V

    .line 508
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 514
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 519
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 524
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    sget-boolean v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 525
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result v0

    if-ne v3, v0, :cond_5

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    .line 527
    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v0

    sget v4, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    add-int/2addr v4, v2

    if-ge v0, v4, :cond_4

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 530
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mIsInEdit:Z

    if-nez v0, :cond_6

    .line 535
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0, v2, v3}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(IZ)V

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Ljava/lang/Runnable;)V

    .line 538
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mCurrentBackgroundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->updateCurrentPositionByPath(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getSelectedPosition()I

    move-result v0

    if-ltz v0, :cond_7

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getSelectedPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->updateUIByPosition(I)V

    :cond_7
    return-void
.end method

.method public onSingleTapUp()V
    .locals 3

    .line 592
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onSingleTapUp()V

    .line 593
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->isInEdit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$RecycleAdapter;->setEdit(Z)V

    .line 595
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getSelectedPosition()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_0

    .line 596
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->getSelectedPosition()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTAIndex(I)V

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Ljava/lang/Runnable;)V

    .line 599
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->updateDeleteUI(Z)V

    .line 600
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;->mFacemojiThumbnailAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public releaseResource()V
    .locals 5

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    .line 469
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 470
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    move v3, v1

    .line 471
    :goto_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 472
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 474
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;

    .line 475
    iget-object v4, v4, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/FacemojiThumbnailAdapter$VH;->mItemImg:Landroid/widget/ImageView;

    check-cast v4, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;

    .line 476
    invoke-virtual {v4}, Lcom/transsion/camera/feature/arcore/common/widgets/CircleImageView;->releaseResource()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 483
    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 484
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 486
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$ItemVH;

    .line 487
    iget-object v2, v2, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$ItemVH;->itemView:Landroid/widget/ImageView;

    check-cast v2, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;

    .line 488
    invoke-virtual {v2}, Lcom/transsion/camera/feature/arcore/common/widgets/RoundImageView;->releaseResource()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
