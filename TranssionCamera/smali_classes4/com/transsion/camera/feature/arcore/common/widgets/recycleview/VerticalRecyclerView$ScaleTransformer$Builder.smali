.class public final Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;
.super Ljava/lang/Object;
.source "VerticalRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;

    return-void
.end method

.method private assertAxis(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;I)V
    .locals 0

    .line 847
    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;->getAxis()I

    move-result p0

    if-ne p0, p2, :cond_0

    return-void

    .line 848
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You passed a Pivot for wrong axis."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;
    .locals 0

    .line 843
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;

    return-object p0
.end method

.method public setMaxScale(F)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;->access$2202(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;F)F

    return-object p0
.end method

.method public setMinScale(F)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;->access$2102(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;F)F

    return-object p0
.end method

.method public setPivotX(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot$X;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;
    .locals 0

    .line 823
    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot$X;->create()Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->setPivotX(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPivotX(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 827
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->assertAxis(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;I)V

    .line 828
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;->access$2302(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;

    return-object p0
.end method

.method public setPivotY(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot$Y;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;
    .locals 0

    .line 833
    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot$Y;->create()Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->setPivotY(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPivotY(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 837
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->assertAxis(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;I)V

    .line 838
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer$Builder;->mTransformer:Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;->access$2402(Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ScaleTransformer;Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;)Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/VerticalRecyclerView$ITransformer$Pivot;

    return-object p0
.end method
