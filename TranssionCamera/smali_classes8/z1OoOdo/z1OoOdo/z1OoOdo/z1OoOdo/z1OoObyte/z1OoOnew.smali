.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOnew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;


# instance fields
.field public final z1OoOdo:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOnew;->z1OoOdo:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public isInAbsoluteEnd()Z
    .locals 1

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOnew;->z1OoOdo:Landroid/widget/ScrollView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public isInAbsoluteStart()Z
    .locals 1

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOnew;->z1OoOdo:Landroid/widget/ScrollView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public z1OoOdo()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOnew;->z1OoOdo:Landroid/widget/ScrollView;

    return-object p0
.end method
