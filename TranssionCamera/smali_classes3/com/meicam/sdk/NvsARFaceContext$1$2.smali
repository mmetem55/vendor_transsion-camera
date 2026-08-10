.class Lcom/meicam/sdk/NvsARFaceContext$1$2;
.super Ljava/lang/Object;
.source "NvsARFaceContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/sdk/NvsARFaceContext$1;->notifyFaceItemLoadingFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meicam/sdk/NvsARFaceContext$1;


# direct methods
.method constructor <init>(Lcom/meicam/sdk/NvsARFaceContext$1;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/meicam/sdk/NvsARFaceContext$1$2;->this$1:Lcom/meicam/sdk/NvsARFaceContext$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/meicam/sdk/NvsARFaceContext$1$2;->this$1:Lcom/meicam/sdk/NvsARFaceContext$1;

    iget-object p0, p0, Lcom/meicam/sdk/NvsARFaceContext$1;->this$0:Lcom/meicam/sdk/NvsARFaceContext;

    iget-object p0, p0, Lcom/meicam/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-eqz p0, :cond_0

    .line 348
    invoke-interface {p0}, Lcom/meicam/sdk/NvsARFaceContext$NvsARFaceContextCallback;->notifyFaceItemLoadingFinish()V

    :cond_0
    return-void
.end method
