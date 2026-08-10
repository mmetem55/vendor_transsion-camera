.class Lcom/transsion/ardrawlines/utils/OnShakeClickListener$1;
.super Ljava/lang/Object;
.source "OnShakeClickListener.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ardrawlines/utils/OnShakeClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/ardrawlines/utils/OnShakeClickListener;


# direct methods
.method constructor <init>(Lcom/transsion/ardrawlines/utils/OnShakeClickListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener$1;->this$0:Lcom/transsion/ardrawlines/utils/OnShakeClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 42
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 43
    iget-object p1, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener$1;->this$0:Lcom/transsion/ardrawlines/utils/OnShakeClickListener;

    invoke-static {p1}, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->-$$Nest$fgetcurrentView(Lcom/transsion/ardrawlines/utils/OnShakeClickListener;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p0, p0, Lcom/transsion/ardrawlines/utils/OnShakeClickListener$1;->this$0:Lcom/transsion/ardrawlines/utils/OnShakeClickListener;

    invoke-static {p0}, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->-$$Nest$fgetcurrentView(Lcom/transsion/ardrawlines/utils/OnShakeClickListener;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/ardrawlines/utils/OnShakeClickListener;->-$$Nest$mresetView(Lcom/transsion/ardrawlines/utils/OnShakeClickListener;Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
