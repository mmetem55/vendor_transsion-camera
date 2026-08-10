.class public Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;
.super Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;
.source "ARCoreFragment.java"


# static fields
.field private static final DEFAULT_RATIO:F = 1.0f

.field private static final DEFAULT_SELECTED_POSITION:I = 0x2

.field private static final REAL_AVATAR_ITEM_INDEX:I = 0x2

.field private static final SCALE_RATIO:F = 0.8f

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private avatarPTAList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;

.field private mArCoreEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mArCoreSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mArCoreTouchListener:Landroid/view/View$OnTouchListener;

.field protected mArcoreBackGuideLayout:Landroid/view/View;

.field private mAvatarItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

.field private final mAvatarOnItemClickListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;

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

.field private mExpressionIndex:I

.field private mIsSetAvatarDone:Z

.field private final mOnItemClickListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;-><init>()V

    const/4 v0, 0x2

    .line 49
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mExpressionIndex:I

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mIsSetAvatarDone:Z

    const-string v0, ""

    .line 51
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mCurrentBackgroundPath:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->avatarPTAList:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$1;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArCoreEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 69
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$2;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArCoreTouchListener:Landroid/view/View$OnTouchListener;

    .line 104
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$3;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemList:Ljava/util/List;

    .line 113
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$4;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$4;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemListFold:Ljava/util/List;

    .line 123
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$5;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$5;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mOnItemClickListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;

    .line 131
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$6;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAvatarOnItemClickListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArCoreSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mCurrentBackgroundPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mIsSetAvatarDone:Z

    return p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mIsSetAvatarDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAvatarItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mExpressionIndex:I

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mExpressionIndex:I

    return p1
.end method

.method private initAvatar()V
    .locals 5

    .line 203
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

    .line 204
    :goto_0
    sget-object v2, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[initAvatar] serializable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 208
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 6

    .line 222
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->sharedViewInit(Landroid/view/View;)V

    .line 223
    sget v0, Lcom/transsion/camera/feature/arcore/R$id;->arcore_guid_framelayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArcoreBackGuideLayout:Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mTopbar:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/LayoutUtils;->copyMarginParams(Landroid/view/View;Landroid/view/View;)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 226
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    invoke-direct {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAvatarItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    .line 227
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->setExpendUI(Z)V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAvatarItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAvatarOnItemClickListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter$OnItemClickListener;)V

    .line 229
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 231
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 232
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAvatarItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 233
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$7;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$7;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$8;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mSelectBundleRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$9;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$9;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 263
    :goto_0
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;

    invoke-static {v0}, Lcom/faceunity/pta_art/constant/ResourceJson;->getExpressionResource(Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result v3

    invoke-direct {p1, v2, v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;-><init>(Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAnimationAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$10;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$10;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    invoke-interface {p1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setOnSelectChangeListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView$IOnSelectChangeListener;)V

    .line 275
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAnimationAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 276
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p1

    const-string v2, "background/static/bg_static_04.png"

    const/4 v3, 0x4

    if-eqz p1, :cond_2

    .line 277
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemListFold:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemListFold:Ljava/util/List;

    new-instance v4, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    sget v5, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_bg_4:I

    invoke-direct {v4, v5, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 280
    :cond_1
    new-instance p1, Lcom/transsion/camera/ar/manager/ARBackgroundAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemListFold:Ljava/util/List;

    invoke-direct {p1, v2}, Lcom/transsion/camera/ar/manager/ARBackgroundAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    .line 281
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 282
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 283
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 285
    :cond_2
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 286
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemList:Ljava/util/List;

    new-instance v4, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    sget v5, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_bg_4:I

    invoke-direct {v4, v5, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 288
    :cond_3
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemList:Ljava/util/List;

    invoke-direct {p1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    .line 289
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 290
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 291
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$11;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$11;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 299
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 300
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mOnItemClickListener:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->setOnItemSelectedListener(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter$OnItemClickListener;)V

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 303
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 304
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getLastModuleId()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->getCurrentModuleId()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 306
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mFacemojiSwitchButton:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->arCoreAndFacemojiChangeAnimation(Landroid/view/View;Landroid/view/View;)V

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mAvatarRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/feature/arcore/R$dimen;->recyclerview_translation_y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->arCoreRecyclerViewAnimation(Landroid/view/View;F)V

    .line 308
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/camera/feature/arcore/R$dimen;->ar_core_icon_translate_fold:I

    invoke-static {v3}, Lcom/transsion/camera/utils/ResourceUtils;->dpRes(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p1, v0, v2, v3}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->threeIconAnimationFold(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    goto :goto_2

    .line 311
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeMusicButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/arcore/R$dimen;->icon_translation_x:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-static {p1, v0, v2, v3}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->threeIconAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    .line 314
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArcoreBackGuideLayout:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArcoreBackGuideLayout:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->disappearBackGuide(Landroid/view/View;)V

    .line 319
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->springAnimation(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArCoreSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 320
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArCoreEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 321
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArCoreTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updateAdapterData(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->avatarPTAList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 327
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->avatarPTAList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAvatarItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->avatarPTAList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->updateAvatarPTAList(Ljava/util/List;)V

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAvatarItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;->updateAvatar(Lcom/faceunity/pta_art/entity/AvatarPTA;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 172
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->initView(Landroid/view/View;)V

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->initAvatar()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isExpandUI()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->ar_shot_fragment_preview_layout_fold:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->ar_shot_fragment_preview_layout:I

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mRootView:Landroid/view/View;

    .line 192
    sget p3, Lcom/transsion/camera/feature/arcore/R$layout;->arcore_back_guide:I

    check-cast p2, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 178
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeFigureButton:Landroid/widget/ImageView;

    .line 180
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAvatarItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/AvatarItemAdapter;

    .line 181
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mAnimationAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/ModuleAnimationAdapter;

    .line 182
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    .line 183
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArcoreBackGuideLayout:Landroid/view/View;

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArCoreSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mArCoreEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->sharedViewUnint()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 198
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 381
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onPause()V

    .line 382
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setPauseFlag(Z)V

    .line 384
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->cancelReachLimitedAvatar()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 339
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onResume()V

    .line 340
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 343
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mArCoreSwitchButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(IZ)V

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "whs currentAvatar = null. mModuleOperator.getCurrentAvatarIndex() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v3}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getCurrentAvatarIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mExpressionIndex is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mExpressionIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    :cond_0
    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->isAddFlag()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->getAvatarPTAList()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    :cond_1
    if-eqz v0, :cond_2

    .line 356
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mExpressionIndex:I

    invoke-interface {v2, v3}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setSelectedPosition(I)V

    .line 357
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mExpressionIndex:I

    invoke-virtual {v0, v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->setExpressionIndex(I)V

    .line 358
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mHorizontalRecycleView:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;

    invoke-interface {v2, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/IAvatarRecyclerView;->setPauseFlag(Z)V

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    new-instance v2, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$12;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment$12;-><init>(Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/transsion/camera/feature/arcore/manager/IAvatarOperator;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V

    .line 367
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->updateAdapterData(Lcom/faceunity/pta_art/entity/AvatarPTA;)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mBackgroundItemAdapter:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/ARCoreFragment;->mCurrentBackgroundPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItemAdapter;->updateCurrentPositionByPath(Ljava/lang/String;)V

    return-void
.end method

.method public onSingleTapUp()V
    .locals 0

    .line 373
    invoke-super {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->onSingleTapUp()V

    .line 374
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->mModuleOperator:Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;->isModuleChanging()Z

    return-void
.end method

.method public translateView(Landroid/view/View;Z)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->mChangeBgRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/transsion/camera/feature/arcore/R$dimen;->change_option_translation_x:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    const/4 p2, 0x0

    const/16 v0, 0x258

    invoke-static {p1, p0, p2, v0}, Lcom/transsion/camera/feature/arcore/common/utils/ArcoreAnimationUtil;->changeOptionAnimation(Landroid/view/View;FFI)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->translateView(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method
