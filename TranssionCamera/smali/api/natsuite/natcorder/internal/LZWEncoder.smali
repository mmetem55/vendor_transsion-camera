.class public final Lapi/natsuite/natcorder/internal/LZWEncoder;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# static fields
.field static final BITS:I = 0xc

.field private static final EOF:I = -0x1

.field static final HSIZE:I = 0x138b


# instance fields
.field ClearCode:I

.field EOFCode:I

.field a_count:I

.field accum:[B

.field clear_flg:Z

.field codetab:[I

.field cur_accum:I

.field cur_bits:I

.field private currentPixel:I

.field free_ent:I

.field g_init_bits:I

.field hashtable:[I

.field private height:I

.field hsize:I

.field private initCodeSize:I

.field masks:[I

.field maxbits:I

.field maxcode:I

.field maxmaxcode:I

.field n_bits:I

.field private pixelData:[B

.field private width:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 35
    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxbits:I

    const/16 v0, 0x1000

    .line 37
    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxmaxcode:I

    const/16 v0, 0x138b

    new-array v1, v0, [I

    .line 38
    iput-object v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->hashtable:[I

    new-array v1, v0, [I

    .line 39
    iput-object v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->codetab:[I

    .line 40
    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->hsize:I

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->free_ent:I

    .line 44
    iput-boolean v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->clear_flg:Z

    .line 74
    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    .line 75
    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_bits:I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 76
    fill-array-data v0, :array_0

    iput-object v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->masks:[I

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 81
    iput-object v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->accum:[B

    .line 85
    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->width:I

    .line 86
    iput p2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->height:I

    const/4 p1, 0x2

    .line 87
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->initCodeSize:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private nextPixel()I
    .locals 3

    .line 193
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->currentPixel:I

    iget-object v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->pixelData:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 195
    iput v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->currentPixel:I

    aget-byte p0, v1, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method final MAXCODE(I)I
    .locals 0

    const/4 p0, 0x1

    shl-int p1, p0, p1

    sub-int/2addr p1, p0

    return p1
.end method

.method char_out(BLjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->accum:[B

    iget v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->a_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->a_count:I

    aput-byte p1, v0, v1

    const/16 p1, 0xfe

    if-lt v2, p1, :cond_0

    .line 103
    invoke-virtual {p0, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method

.method cl_block(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->hsize:I

    invoke-virtual {p0, v0}, Lapi/natsuite/natcorder/internal/LZWEncoder;->cl_hash(I)V

    .line 111
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->ClearCode:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->free_ent:I

    const/4 v1, 0x1

    .line 112
    iput-boolean v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->clear_flg:Z

    .line 113
    invoke-virtual {p0, v0, p1}, Lapi/natsuite/natcorder/internal/LZWEncoder;->write(ILjava/io/OutputStream;)V

    return-void
.end method

.method cl_hash(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 119
    iget-object v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->hashtable:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method compress(ILjava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->g_init_bits:I

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->clear_flg:Z

    .line 129
    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->n_bits:I

    .line 130
    invoke-virtual {p0, p1}, Lapi/natsuite/natcorder/internal/LZWEncoder;->MAXCODE(I)I

    move-result v1

    iput v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxcode:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    .line 131
    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->ClearCode:I

    add-int/lit8 v2, p1, 0x1

    .line 132
    iput v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->EOFCode:I

    add-int/lit8 p1, p1, 0x2

    .line 133
    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->free_ent:I

    .line 134
    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->a_count:I

    .line 135
    invoke-direct {p0}, Lapi/natsuite/natcorder/internal/LZWEncoder;->nextPixel()I

    move-result p1

    .line 137
    iget v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->hsize:I

    :goto_0
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    rsub-int/lit8 v0, v0, 0x8

    .line 141
    iget v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->hsize:I

    .line 142
    invoke-virtual {p0, v2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->cl_hash(I)V

    .line 143
    iget v3, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v3, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->write(ILjava/io/OutputStream;)V

    .line 144
    :goto_1
    invoke-direct {p0}, Lapi/natsuite/natcorder/internal/LZWEncoder;->nextPixel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    .line 145
    iget v4, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxbits:I

    shl-int v4, v3, v4

    add-int/2addr v4, p1

    shl-int v5, v3, v0

    xor-int/2addr v5, p1

    .line 148
    iget-object v6, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->hashtable:[I

    aget v6, v6, v5

    if-ne v6, v4, :cond_1

    .line 149
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->codetab:[I

    aget p1, p1, v5

    goto :goto_1

    :cond_1
    if-ltz v6, :cond_5

    sub-int v6, v2, v5

    if-nez v5, :cond_2

    move v6, v1

    :cond_2
    sub-int/2addr v5, v6

    if-gez v5, :cond_3

    add-int/2addr v5, v2

    .line 160
    :cond_3
    iget-object v7, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->hashtable:[I

    aget v7, v7, v5

    if-ne v7, v4, :cond_4

    .line 161
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->codetab:[I

    aget p1, p1, v5

    goto :goto_1

    :cond_4
    if-gez v7, :cond_2

    .line 166
    :cond_5
    invoke-virtual {p0, p1, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->write(ILjava/io/OutputStream;)V

    .line 168
    iget p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->free_ent:I

    iget v6, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxmaxcode:I

    if-ge p1, v6, :cond_6

    .line 169
    iget-object v6, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->codetab:[I

    add-int/lit8 v7, p1, 0x1

    iput v7, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->free_ent:I

    aput p1, v6, v5

    .line 170
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->hashtable:[I

    aput v4, p1, v5

    goto :goto_2

    .line 172
    :cond_6
    invoke-virtual {p0, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->cl_block(Ljava/io/OutputStream;)V

    :goto_2
    move p1, v3

    goto :goto_1

    .line 175
    :cond_7
    invoke-virtual {p0, p1, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->write(ILjava/io/OutputStream;)V

    .line 176
    iget p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->EOFCode:I

    invoke-virtual {p0, p1, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->write(ILjava/io/OutputStream;)V

    return-void
.end method

.method public encode([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->initCodeSize:I

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 92
    iput-object p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->pixelData:[B

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->currentPixel:I

    .line 94
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->initCodeSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->compress(ILjava/io/OutputStream;)V

    .line 95
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method flush_char(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->a_count:I

    if-lez v0, :cond_0

    .line 182
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 183
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->accum:[B

    iget v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->a_count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 184
    iput v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->a_count:I

    :cond_0
    return-void
.end method

.method write(ILjava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    iget-object v1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->masks:[I

    iget v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_bits:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    if-lez v2, :cond_0

    shl-int v1, p1, v2

    or-int/2addr v0, v1

    .line 201
    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    goto :goto_0

    .line 203
    :cond_0
    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    .line 204
    :goto_0
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->n_bits:I

    add-int/2addr v2, v0

    iput v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_bits:I

    .line 205
    :goto_1
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_bits:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 206
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 207
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    shr-int/2addr v0, v1

    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    .line 208
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_bits:I

    sub-int/2addr v0, v1

    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_bits:I

    goto :goto_1

    .line 212
    :cond_1
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->free_ent:I

    iget v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxcode:I

    if-gt v0, v2, :cond_2

    iget-boolean v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_5

    .line 213
    :cond_2
    iget-boolean v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_3

    .line 214
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->g_init_bits:I

    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lapi/natsuite/natcorder/internal/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxcode:I

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->clear_flg:Z

    goto :goto_2

    .line 217
    :cond_3
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->n_bits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->n_bits:I

    .line 218
    iget v2, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxbits:I

    if-ne v0, v2, :cond_4

    .line 219
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxmaxcode:I

    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxcode:I

    goto :goto_2

    .line 221
    :cond_4
    invoke-virtual {p0, v0}, Lapi/natsuite/natcorder/internal/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->maxcode:I

    .line 224
    :cond_5
    :goto_2
    iget v0, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->EOFCode:I

    if-ne p1, v0, :cond_7

    .line 226
    :goto_3
    iget p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_bits:I

    if-lez p1, :cond_6

    .line 227
    iget p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 228
    iget p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    shr-int/2addr p1, v1

    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_accum:I

    .line 229
    iget p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_bits:I

    sub-int/2addr p1, v1

    iput p1, p0, Lapi/natsuite/natcorder/internal/LZWEncoder;->cur_bits:I

    goto :goto_3

    .line 231
    :cond_6
    invoke-virtual {p0, p2}, Lapi/natsuite/natcorder/internal/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    :cond_7
    return-void
.end method
