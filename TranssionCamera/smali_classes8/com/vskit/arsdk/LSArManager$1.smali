.class Lcom/vskit/arsdk/LSArManager$1;
.super Ljava/lang/Object;
.source "LSArManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vskit/arsdk/LSArManager;->onEffectSelected(Lcom/faceunity/entity/Effect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vskit/arsdk/LSArManager;


# direct methods
.method constructor <init>(Lcom/vskit/arsdk/LSArManager;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/vskit/arsdk/LSArManager$1;->this$0:Lcom/vskit/arsdk/LSArManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager$1;->this$0:Lcom/vskit/arsdk/LSArManager;

    invoke-static {v0}, Lcom/vskit/arsdk/LSArManager;->access$000(Lcom/vskit/arsdk/LSArManager;)I

    move-result v0

    if-lez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager$1;->this$0:Lcom/vskit/arsdk/LSArManager;

    invoke-static {v0}, Lcom/vskit/arsdk/LSArManager;->access$000(Lcom/vskit/arsdk/LSArManager;)I

    move-result v0

    invoke-static {v0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->deleteTexture(I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/vskit/arsdk/LSArManager$1;->this$0:Lcom/vskit/arsdk/LSArManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vskit/arsdk/LSArManager;->access$002(Lcom/vskit/arsdk/LSArManager;I)I

    .line 129
    iget-object p0, p0, Lcom/vskit/arsdk/LSArManager$1;->this$0:Lcom/vskit/arsdk/LSArManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vskit/arsdk/LSArManager;->access$102(Lcom/vskit/arsdk/LSArManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
