.class public Lcom/transsion/camera/feature/mode/makeup/manager/ScrollLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "ScrollLinearLayoutManager.java"


# instance fields
.field private mCanHorizontalScroll:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/manager/ScrollLinearLayoutManager;->mCanHorizontalScroll:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/makeup/manager/ScrollLinearLayoutManager;->mCanHorizontalScroll:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 34
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result p0

    return p0
.end method

.method public setCanHorizontalScroll(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/makeup/manager/ScrollLinearLayoutManager;->mCanHorizontalScroll:Z

    return-void
.end method
