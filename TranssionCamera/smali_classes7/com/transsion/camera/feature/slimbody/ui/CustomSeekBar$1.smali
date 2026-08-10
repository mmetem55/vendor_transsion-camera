.class Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$1;
.super Ljava/lang/Object;
.source "CustomSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;->access$002(Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;Z)Z

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/CustomSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
