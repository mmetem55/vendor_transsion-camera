.class public Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Max400Factory;
.super Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Factory;
.source "ZoomMin100Max400Factory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/draw/ZoomMin100Factory;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/widget/graduated/GraduationHelper;)V

    return-void
.end method


# virtual methods
.method protected buildMajorIndexList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    .line 31
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v2, 0x64

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/graduated/factory/graduation/BaseGraduationFactory;->mValues:Ljava/util/List;

    const/16 v1, 0x190

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 31
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected buildValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x64

    :goto_0
    const/16 v1, 0x190

    if-gt v0, v1, :cond_0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_0
    return-object p0
.end method
