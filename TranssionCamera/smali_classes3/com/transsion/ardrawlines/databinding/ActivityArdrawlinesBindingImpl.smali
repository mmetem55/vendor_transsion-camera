.class public Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;
.super Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;
.source "ActivityArdrawlinesBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "view_multimedia"

    const-string v2, "view_timing"

    const-string v3, "view_guide"

    .line 16
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    sget v4, Lcom/transsion/ardrawlines/R$layout;->view_multimedia:I

    const/4 v5, 0x0

    aput v4, v2, v5

    sget v4, Lcom/transsion/ardrawlines/R$layout;->view_timing:I

    const/4 v6, 0x1

    aput v4, v2, v6

    sget v4, Lcom/transsion/ardrawlines/R$layout;->view_guide:I

    const/4 v7, 0x2

    aput v4, v2, v7

    invoke-virtual {v0, v5, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 22
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 23
    sget v1, Lcom/transsion/ardrawlines/R$id;->view_brush_area:I

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/transsion/ardrawlines/R$id;->unityPlayer:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/transsion/ardrawlines/R$id;->action_bar_back:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/transsion/ardrawlines/R$id;->view_holder:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 37
    sget-object v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x8

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 13

    move-object v11, p0

    const/4 v0, 0x6

    .line 40
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageButton;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    const/4 v0, 0x1

    .line 43
    aget-object v0, p3, v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v12

    :goto_0
    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ImageButton;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 40
    invoke-direct/range {v0 .. v10}, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/FrameLayout;Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;Landroid/widget/ImageButton;Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;)V

    const-wide/16 v0, -0x1

    .line 158
    iput-wide v0, v11, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    const/4 v0, 0x0

    .line 49
    aget-object v0, p3, v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, v11, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, v11, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewGuide:Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 52
    iget-object v0, v11, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 53
    iget-object v0, v11, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    invoke-virtual {p0, v0}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    move-object v0, p2

    .line 54
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeViewGuide(Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;I)Z
    .locals 2

    .line 116
    sget p1, Lcom/transsion/ardrawlines/BR;->_all:I

    if-ne p2, p1, :cond_0

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide p1, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    .line 119
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeViewMultimedia(Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;I)Z
    .locals 2

    .line 125
    sget p1, Lcom/transsion/ardrawlines/BR;->_all:I

    if-ne p2, p1, :cond_0

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    iget-wide p1, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    .line 128
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeViewTiming(Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;I)Z
    .locals 2

    .line 134
    sget p1, Lcom/transsion/ardrawlines/BR;->_all:I

    if-ne p2, p1, :cond_0

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide p1, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    .line 137
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 146
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 148
    :try_start_0
    iput-wide v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 152
    iget-object v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 153
    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewGuide:Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    invoke-static {p0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 149
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-wide v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 74
    monitor-exit p0

    return v1

    .line 76
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewGuide:Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    .line 76
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 61
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 62
    :try_start_0
    iput-wide v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->mDirtyFlags:J

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    iget-object v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 65
    iget-object v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 66
    iget-object v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewGuide:Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 67
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 63
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 111
    :cond_0
    check-cast p2, Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    invoke-direct {p0, p2, p3}, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->onChangeViewTiming(Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;I)Z

    move-result p0

    return p0

    .line 109
    :cond_1
    check-cast p2, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    invoke-direct {p0, p2, p3}, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->onChangeViewMultimedia(Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;I)Z

    move-result p0

    return p0

    .line 107
    :cond_2
    check-cast p2, Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    invoke-direct {p0, p2, p3}, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBindingImpl;->onChangeViewGuide(Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;I)Z

    move-result p0

    return p0
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewMultimedia:Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 99
    iget-object v0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewTiming:Lcom/transsion/ardrawlines/databinding/ViewTimingBinding;

    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 100
    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->viewGuide:Lcom/transsion/ardrawlines/databinding/ViewGuideBinding;

    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
