.class Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$5;
.super Ljava/lang/Object;
.source "CommonFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment$5;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 364
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
