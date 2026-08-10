.class Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper$1;
.super Ljava/util/HashMap;
.source "FilterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/util/FilterHelper;
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

    .line 37
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "supernight_filter_off"

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "green_orange"

    const-string v1, "670C7010-D791-46CA-8890-93E8EA2263B9"

    .line 40
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "black_gold"

    const-string v1, "B30D9226-B937-44EE-8742-2F06E519224C"

    .line 41
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cybepunk"

    const-string v1, "58098950-3A37-4BEC-8622-0E5D54343E0E"

    .line 42
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "blues"

    const-string v1, "8D6ACB23-0313-4D52-8D7C-FFE9126135A1"

    .line 43
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "abao"

    const-string v1, "749C7148-F6C7-418A-B177-3493994A5F84"

    .line 44
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "paris"

    const-string v1, "45A1DD2E-51AF-4700-851D-FD673C00D70D"

    .line 45
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
