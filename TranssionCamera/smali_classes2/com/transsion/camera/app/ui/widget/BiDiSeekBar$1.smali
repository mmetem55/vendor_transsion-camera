.class Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;
.super Ljava/lang/Object;
.source "BiDiSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->access$002(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;Z)Z

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$1;->this$0:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
