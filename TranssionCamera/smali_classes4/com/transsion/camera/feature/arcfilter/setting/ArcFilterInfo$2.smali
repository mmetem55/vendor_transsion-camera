.class Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo$2;
.super Ljava/util/HashMap;
.source "ArcFilterInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;
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
    .locals 5

    .line 63
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 66
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_origin:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_nono:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 65
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x10000306

    .line 68
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 69
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_fresh:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_fresh:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 68
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x10000301

    .line 71
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 72
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_forest:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_15:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 71
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x10000303

    .line 74
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 75
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_flame:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_flame:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 74
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x10000307

    .line 77
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 78
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_fade:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_fade:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 77
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x10000304

    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 81
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_nature:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_3:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 80
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x10000305

    .line 83
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 84
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_baby:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_baby:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 83
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x10000302

    .line 86
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 87
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_blues:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_5:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 86
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x10000308

    .line 89
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 90
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_mono:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_21:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 89
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x1000030b

    .line 92
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 93
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_lively:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_lively:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 92
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x1000030c

    .line 95
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;

    .line 96
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_camera_filter_bg_classical:I

    sget v4, Lcom/transsion/camera/feature/arcfilter/R$string;->camera_filter_name_classical:I

    invoke-direct {v2, v0, v3, v4}, Lcom/transsion/camera/app/ui/widget/FilterRecyclerViewAdapter$ItemInfo;-><init>(Ljava/lang/String;II)V

    .line 95
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
