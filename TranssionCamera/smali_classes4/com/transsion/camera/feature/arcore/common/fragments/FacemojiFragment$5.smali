.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$5;
.super Ljava/util/ArrayList;
.source "FacemojiFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V
    .locals 2

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_bg_0:I

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_bg_1:I

    const-string v1, "background/static/bg_static_01_fold.png"

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_bg_2:I

    const-string v1, "background/static/bg_static_02_fold.png"

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance p1, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;

    sget v0, Lcom/transsion/camera/feature/arcore/R$drawable;->ic_bg_3:I

    const-string v1, "background/static/bg_static_03_fold.png"

    invoke-direct {p1, v0, v1}, Lcom/transsion/camera/feature/arcore/common/widgets/recycleview/BackgroundItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
