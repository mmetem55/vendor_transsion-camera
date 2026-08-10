.class Lcom/faceunity/FURenderer$14;
.super Ljava/lang/Object;
.source "FURenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/faceunity/FURenderer;->onCameraChange(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/faceunity/FURenderer;

.field final synthetic val$cameraFacing:I

.field final synthetic val$inputOrientation:I


# direct methods
.method constructor <init>(Lcom/faceunity/FURenderer;II)V
    .locals 0

    .line 1180
    iput-object p1, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    iput p2, p0, Lcom/faceunity/FURenderer$14;->val$cameraFacing:I

    iput p3, p0, Lcom/faceunity/FURenderer$14;->val$inputOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1183
    iget-object v0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/faceunity/FURenderer;->access$402(Lcom/faceunity/FURenderer;I)I

    .line 1184
    iget-object v0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    iget v2, p0, Lcom/faceunity/FURenderer$14;->val$cameraFacing:I

    invoke-static {v0, v2}, Lcom/faceunity/FURenderer;->access$802(Lcom/faceunity/FURenderer;I)I

    .line 1185
    iget-object v0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    iget v2, p0, Lcom/faceunity/FURenderer$14;->val$inputOrientation:I

    invoke-static {v0, v2}, Lcom/faceunity/FURenderer;->access$902(Lcom/faceunity/FURenderer;I)I

    .line 1186
    iget-object v0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$500(Lcom/faceunity/FURenderer;)V

    .line 1187
    iget-object v0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1100(Lcom/faceunity/FURenderer;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/faceunity/FURenderer;->access$1002(Lcom/faceunity/FURenderer;I)I

    .line 1188
    iget-object v0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    .line 1189
    invoke-static {v1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_0

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1000(Lcom/faceunity/FURenderer;)I

    move-result v0

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 1192
    iget-object v0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1200(Lcom/faceunity/FURenderer;)V

    .line 1193
    iget-object v0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {v0}, Lcom/faceunity/FURenderer;->access$1300(Lcom/faceunity/FURenderer;)Lcom/faceunity/entity/Effect;

    move-result-object v1

    iget-object p0, p0, Lcom/faceunity/FURenderer$14;->this$0:Lcom/faceunity/FURenderer;

    invoke-static {p0}, Lcom/faceunity/FURenderer;->access$600(Lcom/faceunity/FURenderer;)[I

    move-result-object p0

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-virtual {v0, v1, p0}, Lcom/faceunity/FURenderer;->updateEffectItemParams(Lcom/faceunity/entity/Effect;I)V

    :goto_0
    return-void
.end method
