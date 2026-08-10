.class Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;
.super Landroid/os/Handler;
.source "MacroUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/macro/MacroUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIHandler"
.end annotation


# instance fields
.field mUIWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/app/ui/mode/macro/MacroUI;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;->this$0:Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;->mUIWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;->mUIWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;

    .line 52
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->access$100(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->access$000(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V

    :goto_0
    return-void
.end method
