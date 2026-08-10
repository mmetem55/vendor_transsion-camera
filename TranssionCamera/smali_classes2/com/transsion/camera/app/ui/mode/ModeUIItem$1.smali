.class Lcom/transsion/camera/app/ui/mode/ModeUIItem$1;
.super Ljava/util/HashMap;
.source "ModeUIItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/ModeUIItem;
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


# direct methods
.method constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "com.transsion.camera.feature.mode.supernight.SuperNightModeEntry"

    const-string v1, "super_night"

    .line 49
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.supernightfilter.mode.SuperNightFilterModeEntry"

    .line 50
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
