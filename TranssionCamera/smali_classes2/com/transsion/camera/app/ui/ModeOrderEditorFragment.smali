.class public Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "ModeOrderEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBackOrderEditorUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCamera:Ljava/lang/String;

.field private mEditorModeItemLeft:I

.field private mEditorModeItemTop:I

.field private mFrontOrderEditorUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mLayoutResId:I

.field private mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mModesNumberInTab:I

.field private mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;


# direct methods
.method public static synthetic $r8$lambda$5K2OSzrhmzpRKeU9LfUFCqmQ0EA(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->lambda$setModeList$1(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xLhL0Kyuumup9xIsM2PH7fy4W-s(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    const-string v0, "0"

    .line 39
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    const v0, 0x7f0c0075

    .line 44
    iput v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mLayoutResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mEditorModeItemLeft:I

    return p0
.end method

.method private synthetic lambda$setModeList$0(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 1

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$setModeList$1(Lcom/transsion/camera/app/common/FeatureResource;)V
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorUIItem;-><init>(Lcom/transsion/camera/app/common/FeatureResource;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .locals 0

    return-void
.end method

.method public getEnterAnimation()I
    .locals 0

    const p0, 0x7f02002f

    return p0
.end method

.method public getExitAnimation()I
    .locals 0

    const p0, 0x7f020030

    return p0
.end method

.method protected getPreferenceResource()I
    .locals 0

    const p0, 0x7f140002

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .locals 0

    const p0, 0x7f09016e

    .line 107
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_0

    const p1, 0x7f100245

    .line 109
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 110
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_0
    return-object p0
.end method

.method public initModesNumber(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    return-void
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 6

    .line 62
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mEditorModeItemLeft:I

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mEditorModeItemTop:I

    const v0, 0x7f0902a4

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 66
    new-instance v0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    .line 67
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 68
    new-instance v1, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$1;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    iget v3, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->updateModeList(Ljava/util/List;Ljava/lang/String;I)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/app/ui/anim/EditorItemAnimator;

    invoke-direct {v1}, Lcom/transsion/camera/app/ui/anim/EditorItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$EditorItemDecoration;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$1;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 89
    new-instance v0, Lcom/transsion/camera/app/ui/editor/EditorTouchItemHelper;

    new-instance v1, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v2, Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    new-instance v5, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v5, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/camera/app/ui/editor/EditorItemTouchCallback;-><init>(Lcom/transsion/camera/app/ui/editor/IEditorMotionDetector;Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/editor/EditorTouchItemHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModeOrderEditorRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 57
    iget p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mLayoutResId:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected removeAllPreferences()V
    .locals 0

    return-void
.end method

.method public setModeList(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 141
    iput p3, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mModesNumberInTab:I

    .line 142
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    const-string v0, "0"

    .line 143
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 144
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 145
    new-instance p2, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    if-eqz p1, :cond_1

    .line 147
    iput p3, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    .line 148
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mBackOrderEditorUIItems:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    invoke-virtual {p1, p2, p0, p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->updateModeList(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 153
    new-instance p2, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mOrderEditorRecycleViewAdapter:Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;

    if-eqz p1, :cond_1

    .line 155
    iput p3, p1, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->mModesNumberInTab:I

    .line 156
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mFrontOrderEditorUIItems:Ljava/util/List;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->mCurrentCamera:Ljava/lang/String;

    invoke-virtual {p1, p2, p0, p3}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;->updateModeList(Ljava/util/List;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected unInitViews()V
    .locals 0

    return-void
.end method
