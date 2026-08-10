.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOfor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOdo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOfor"
.end annotation


# instance fields
.field public final synthetic z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;


# direct methods
.method public constructor <init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;)V
    .locals 0

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInAbsoluteEnd()Z
    .locals 1

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOdo:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint$z1OoOfor;->z1OoOdo:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;->z1OoOdo:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
