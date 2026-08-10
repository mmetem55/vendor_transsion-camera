.class Lcom/faceunity/FURenderer$5;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setResetFlag(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/faceunity/FURenderer$5;->this$0:Lcom/faceunity/FURenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 880
    iget-object p0, p0, Lcom/faceunity/FURenderer$5;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object p0

    const/4 v0, 0x1

    aget p0, p0, v0

    const-string v0, "resetFlag"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, v0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method
