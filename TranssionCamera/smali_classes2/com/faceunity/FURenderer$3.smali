.class Lcom/faceunity/FURenderer$3;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->onSurfaceCreated()V
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

    .line 471
    iput-object p1, p0, Lcom/faceunity/FURenderer$3;->this$0:Lcom/faceunity/FURenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 474
    iget-object p0, p0, Lcom/faceunity/FURenderer$3;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$100(Lcom/faceunity/FURenderer;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "model/ai_hand_processor.bundle"

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/faceunity/FURenderer;->access$200(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
