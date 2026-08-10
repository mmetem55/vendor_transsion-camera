.class Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$1;
.super Ljava/lang/Object;
.source "ShutterButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;->drawableStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

.field final synthetic val$pressed:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;Z)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$1;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$1;->val$pressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$1;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView$1;->val$pressed:Z

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;->access$000(Lcom/transsion/camera/app/ui/mode/magicsky/widget/ShutterButtonView;Z)V

    return-void
.end method
