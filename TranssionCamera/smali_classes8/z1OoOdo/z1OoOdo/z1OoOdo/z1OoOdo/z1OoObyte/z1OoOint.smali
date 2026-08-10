.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOfor;,
        Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOif;,
        Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOdo;
    }
.end annotation


# instance fields
.field public final z1OoOdo:Landroidx/recyclerview/widget/RecyclerView;

.field public z1OoOfor:Z

.field public final z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOdo;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOfor:Z

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOdo:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v0, :cond_1

    instance-of v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Set a valid layout managers first, and custom layout manager is not support."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    goto :goto_1

    :cond_2
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    :goto_1
    if-nez p1, :cond_3

    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOif;

    invoke-direct {p1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOif;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOfor;

    invoke-direct {p1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOfor;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;)V

    :goto_2
    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOdo;

    return-void
.end method


# virtual methods
.method public isInAbsoluteEnd()Z
    .locals 1

    iget-boolean v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOfor:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOdo;

    invoke-interface {p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOdo;->isInAbsoluteEnd()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    iget-boolean v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOfor:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOif:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOdo;

    invoke-interface {p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOdo;->isInAbsoluteStart()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public z1OoOdo()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOdo:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method
