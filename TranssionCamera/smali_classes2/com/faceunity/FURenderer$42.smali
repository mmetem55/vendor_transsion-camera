.class Lcom/faceunity/FURenderer$42;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->setAlphaL(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;

.field final synthetic val$intensity:F


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;F)V
    .locals 0

    .line 2094
    iput-object p1, p0, Lcom/faceunity/FURenderer$42;->this$0:Lcom/faceunity/FURenderer;

    iput p2, p0, Lcom/faceunity/FURenderer$42;->val$intensity:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2097
    iget-object v0, p0, Lcom/faceunity/FURenderer$42;->this$0:Lcom/faceunity/FURenderer;

    iget v1, p0, Lcom/faceunity/FURenderer$42;->val$intensity:F

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$3302(Lcom/faceunity/FURenderer;F)F

    .line 2098
    iget-object v0, p0, Lcom/faceunity/FURenderer$42;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 2100
    iget p0, p0, Lcom/faceunity/FURenderer$42;->val$intensity:F

    float-to-double v1, p0

    const-string p0, "alpha_L"

    invoke-static {v0, p0, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :cond_0
    return-void
.end method
