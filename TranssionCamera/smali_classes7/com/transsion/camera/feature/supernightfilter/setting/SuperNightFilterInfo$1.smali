.class Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo$1;
.super Ljava/util/HashMap;
.source "SuperNightFilterInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 38
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 40
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_original:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_orighin:I

    const-string v3, "supernight_filter_off"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_greenorange:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_green_orange:I

    const-string v3, "green_orange"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_blackgold:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_black_gold:I

    const-string v3, "black_gold"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_blue:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_blues:I

    const-string v3, "blues"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_cyberpunk:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_cybepunk:I

    const-string v3, "cybepunk"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_abao:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_abao:I

    const-string v3, "abao"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    sget v1, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_filter_romatic:I

    sget v2, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_paris:I

    const-string v3, "paris"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
