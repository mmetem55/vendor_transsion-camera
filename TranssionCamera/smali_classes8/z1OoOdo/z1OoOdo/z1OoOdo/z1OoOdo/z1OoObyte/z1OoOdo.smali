.class public Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;


# instance fields
.field public final z1OoOdo:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public isInAbsoluteEnd()Z
    .locals 6

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 1
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iget-object v3, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-lt v4, v3, :cond_1

    iget-object v3, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr v3, p0

    if-le v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v2

    :goto_1
    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public isInAbsoluteStart()Z
    .locals 4

    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 1
    iget-object v0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_1

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getListPaddingTop()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public z1OoOdo()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;->z1OoOdo:Landroid/widget/AbsListView;

    return-object p0
.end method
