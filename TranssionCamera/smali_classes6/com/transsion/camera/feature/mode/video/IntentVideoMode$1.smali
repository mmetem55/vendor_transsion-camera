.class Lcom/transsion/camera/feature/mode/video/IntentVideoMode$1;
.super Ljava/util/HashMap;
.source "IntentVideoMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/IntentVideoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/video/IntentVideoMode;)V
    .locals 1

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/IntentVideoMode$1;->this$0:Lcom/transsion/camera/feature/mode/video/IntentVideoMode;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x5

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.azarlive.android"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
