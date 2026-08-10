.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;
.super Landroid/os/Handler;
.source "ProfessionalModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$1;)V
    .locals 0

    .line 193
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 210
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$400(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V

    goto :goto_1

    .line 207
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->dismissPopup()Z

    goto :goto_1

    .line 204
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$300(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;ZZ)V

    goto :goto_1

    .line 201
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$200(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;Ljava/util/List;)V

    goto :goto_1

    .line 198
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$UIHandler;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->access$100(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
