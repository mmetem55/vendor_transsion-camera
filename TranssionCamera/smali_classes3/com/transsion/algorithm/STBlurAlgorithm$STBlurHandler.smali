.class Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;
.super Landroid/os/Handler;
.source "STBlurAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/algorithm/STBlurAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "STBlurHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/algorithm/STBlurAlgorithm;


# direct methods
.method constructor <init>(Lcom/transsion/algorithm/STBlurAlgorithm;Landroid/os/Looper;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    .line 194
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 199
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 201
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 228
    iget-object v0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {v0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->access$600(Lcom/transsion/algorithm/STBlurAlgorithm;I)V

    .line 229
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->access$700(Lcom/transsion/algorithm/STBlurAlgorithm;I)V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/algorithm/STBlurConfig;

    invoke-static {p0, p1}, Lcom/transsion/algorithm/STBlurAlgorithm;->access$500(Lcom/transsion/algorithm/STBlurAlgorithm;Lcom/transsion/algorithm/STBlurConfig;)V

    goto :goto_0

    .line 219
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->access$400(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    goto :goto_0

    .line 215
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->access$300(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->access$200(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    goto :goto_0

    .line 207
    :pswitch_5
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->access$100(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    goto :goto_0

    .line 203
    :pswitch_6
    iget-object p0, p0, Lcom/transsion/algorithm/STBlurAlgorithm$STBlurHandler;->this$0:Lcom/transsion/algorithm/STBlurAlgorithm;

    invoke-static {p0}, Lcom/transsion/algorithm/STBlurAlgorithm;->access$000(Lcom/transsion/algorithm/STBlurAlgorithm;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
