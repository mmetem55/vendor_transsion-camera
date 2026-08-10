.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;
.super Ljava/lang/Object;
.source "DualVideoPreviewProcessor.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDualVideoPreviewUICallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$1;)V
    .locals 0

    .line 1185
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method


# virtual methods
.method public OnDividerChanging(F)V
    .locals 3

    .line 1261
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "OnDividerChanging mPreviewViewHeight is 0, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    float-to-int p1, p1

    int-to-float v0, p1

    .line 1265
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 1266
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F

    goto :goto_0

    .line 1267
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 1268
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F

    goto :goto_0

    .line 1270
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v0

    float-to-int v0, v0

    .line 1271
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F

    .line 1274
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1275
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1302(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1276
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1277
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2002(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    goto :goto_1

    .line 1279
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1802(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1280
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2002(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1281
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1283
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    .line 1284
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method public OnDividerToMiddle()V
    .locals 3

    .line 1299
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F

    .line 1300
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1302(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1302
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1303
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2002(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    goto :goto_0

    .line 1305
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1802(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1306
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2002(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1307
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1309
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method public OnPIPRectChanging(IIII)V
    .locals 3

    .line 1211
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4602(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    mul-int/2addr v1, p2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4702(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1217
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    sub-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4802(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5002(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F

    .line 1221
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F

    .line 1222
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F

    .line 1223
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5302(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)F

    .line 1224
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 1225
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1302(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1226
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1402(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1227
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1502(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1228
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1602(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    goto :goto_0

    .line 1232
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1802(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1233
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$1902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1234
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2002(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1235
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)I

    .line 1239
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void

    .line 1212
    :cond_2
    :goto_1
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2800()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "OnPIPRectChanging, mPreviewViewWidth or mPreviewViewHeight is 0."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public OnPIPRectClicked(Z)V
    .locals 4

    .line 1190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;->isExitPreviewPopwinow()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$4300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    .line 1199
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/16 v0, 0x3e8

    if-eqz p1, :cond_3

    const-wide/16 v2, 0xbb8

    goto :goto_1

    :cond_3
    const-wide/16 v2, 0x0

    :goto_1
    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    return-void
.end method

.method public onDividerChangeBegin()V
    .locals 9

    .line 1251
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1254
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 1255
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 1256
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v7

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v8

    .line 1254
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->runDividerAnimator(IIIIII)V

    return-void
.end method

.method public onDividerChangeEnd()V
    .locals 12

    .line 1289
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$2200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    const-wide/16 v3, 0xbb8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    .line 1292
    :cond_0
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5600(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v7

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 1293
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v8

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v9

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    .line 1294
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6100(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v10

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$6000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v11

    .line 1292
    invoke-virtual/range {v5 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->runDividerAnimator(IIIIII)V

    return-void
.end method

.method public onPIPRectChangeBegin()V
    .locals 1

    .line 1204
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPIPRectChangeEnd()V
    .locals 4

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$5500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getPIPViewSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const-wide/16 v2, 0xbb8

    invoke-static {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->access$3700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    :cond_0
    return-void
.end method
