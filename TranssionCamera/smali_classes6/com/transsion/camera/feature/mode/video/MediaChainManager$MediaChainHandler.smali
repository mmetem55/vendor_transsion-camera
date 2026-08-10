.class final Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;
.super Landroid/os/Handler;
.source "MediaChainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/MediaChainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaChainHandler"
.end annotation


# instance fields
.field private mUnInit:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Landroid/os/Looper;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    .line 178
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->mUnInit:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/video/MediaChainManager$1;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Landroid/os/Looper;)V

    return-void
.end method

.method private processCommand(Landroid/os/Message;)V
    .locals 2

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 241
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    :pswitch_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommand MSG_COMMAND_UNINIT, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    .line 229
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_1

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$700(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 236
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->mUnInit:Z

    goto/16 :goto_1

    .line 230
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$600(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$700(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$202(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    goto/16 :goto_1

    .line 213
    :pswitch_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommand MSG_COMMAND_PROCESS_END, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_3

    .line 215
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$500(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$202(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 219
    :cond_3
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->mUnInit:Z

    if-eqz p1, :cond_7

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$600(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$700(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$202(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    goto/16 :goto_1

    .line 199
    :pswitch_2
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommand MSG_COMMAND_PROCESS, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_4

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$300(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$202(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    .line 205
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    .line 206
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESS_END:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_7

    .line 207
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$400(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_PROCESSING:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$202(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    goto :goto_1

    .line 189
    :pswitch_3
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCommand MSG_COMMAND_LOAD_ALGORITHM, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$200(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_UNKNOWN:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    if-ne p1, v0, :cond_6

    .line 191
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$300(Lcom/transsion/camera/feature/mode/video/MediaChainManager;)V

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->this$0:Lcom/transsion/camera/feature/mode/video/MediaChainManager;

    sget-object p1, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;->STATE_ALGORITHM_LOADED:Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$202(Lcom/transsion/camera/feature/mode/video/MediaChainManager;Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;)Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainState;

    goto :goto_1

    .line 194
    :cond_6
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/MediaChainManager;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "Algorithm is loaded."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/MediaChainManager$MediaChainHandler;->processCommand(Landroid/os/Message;)V

    return-void
.end method
