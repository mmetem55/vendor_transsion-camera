.class Lcom/faceunity/FURenderer$18;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->onMusicFilterTime(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;J)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lcom/faceunity/FURenderer$18;->this$0:Lcom/faceunity/FURenderer;

    iput-wide p2, p0, Lcom/faceunity/FURenderer$18;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1318
    iget-object v0, p0, Lcom/faceunity/FURenderer$18;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-wide v1, p0, Lcom/faceunity/FURenderer$18;->val$time:J

    long-to-double v1, v1

    const-string p0, "music_time"

    invoke-static {v0, p0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method
