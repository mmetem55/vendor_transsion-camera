.class Lcom/faceunity/FURenderer$13;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setMaxFaces(I)V
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

    .line 1064
    iput-object p1, p0, Lcom/faceunity/FURenderer$13;->this$0:Lcom/faceunity/FURenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1067
    iget-object p0, p0, Lcom/faceunity/FURenderer$13;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$700(Lcom/faceunity/FURenderer;)I

    move-result p0

    invoke-static {p0}, Lcom/faceunity/wrapper/faceunity;->fuSetMaxFaces(I)I

    return-void
.end method
