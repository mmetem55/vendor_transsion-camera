.class Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$1;
.super Landroid/database/ContentObserver;
.source "DebugModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;


# direct methods
.method constructor <init>(Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;Landroid/os/Handler;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$1;->this$0:Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 30
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver$1;->this$0:Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;

    invoke-static {p0}, Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;->access$100(Lcom/transsion/voicecamera/sdk/utils/DebugModeObserver;)V

    return-void
.end method
