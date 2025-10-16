.class public Lcom/shockwave/pdfium/PdfiumCore;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final b:Ljava/lang/Object;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/io/FileDescriptor;

    :try_start_0
    const-string v0, "c++_shared"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "modpng"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "modft2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "modpdfium"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "jniPdfium"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Native libraries failed to load - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.shockwave.pdfium.PdfiumCore"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/shockwave/pdfium/PdfiumCore;->a:I

    const-string p1, "com.shockwave.pdfium.PdfiumCore"

    const-string v0, "Starting PdfiumAndroid 1.9.0"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lcom/shockwave/pdfium/PdfDocument;IIIIIIDD)Landroid/graphics/Point;
    .locals 13

    move-object v0, p1

    iget-object v0, v0, Lcom/shockwave/pdfium/PdfDocument;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lcom/shockwave/pdfium/PdfiumCore;->nativePageCoordsToDevice(JIIIIIDD)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/shockwave/pdfium/PdfDocument;I)J
    .locals 4

    sget-object v0, Lcom/shockwave/pdfium/PdfiumCore;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p1, Lcom/shockwave/pdfium/PdfDocument;->a:J

    invoke-virtual {p0, v1, v2, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeLoadPage(JI)J

    move-result-wide v1

    iget-object p1, p1, Lcom/shockwave/pdfium/PdfDocument;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;",
            "Lcom/shockwave/pdfium/PdfDocument;",
            "J)V"
        }
    .end annotation

    new-instance v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument$Bookmark;-><init>()V

    invoke-virtual {p0, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetBookmarkTitle(J)Ljava/lang/String;

    iget-wide v1, p2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    invoke-virtual {p0, v1, v2, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetBookmarkDestIndex(JJ)J

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v1, p2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1
    iget-object v0, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->a:Ljava/util/List;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->c(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    :cond_0
    iget-wide v0, p2, Lcom/shockwave/pdfium/PdfDocument;->a:J

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetSiblingBookmark(JJ)Ljava/lang/Long;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->c(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    :cond_1
    return-void
.end method

.method public final native nativeCloseDocument(J)V
.end method

.method public final native nativeClosePage(J)V
.end method

.method public final native nativeGetBookmarkDestIndex(JJ)J
.end method

.method public final native nativeGetBookmarkTitle(J)Ljava/lang/String;
.end method

.method public final native nativeGetDestPageIndex(JJ)Ljava/lang/Integer;
.end method

.method public final native nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method public final native nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;
.end method

.method public final native nativeGetLinkRect(J)Landroid/graphics/RectF;
.end method

.method public final native nativeGetLinkURI(JJ)Ljava/lang/String;
.end method

.method public final native nativeGetPageCount(J)I
.end method

.method public final native nativeGetPageLinks(J)[J
.end method

.method public final native nativeGetPageSizeByIndex(JII)Lcom/shockwave/pdfium/util/Size;
.end method

.method public final native nativeGetSiblingBookmark(JJ)Ljava/lang/Long;
.end method

.method public final native nativeLoadPage(JI)J
.end method

.method public final native nativeOpenMemDocument([BLjava/lang/String;)J
.end method

.method public final native nativePageCoordsToDevice(JIIIIIDD)Landroid/graphics/Point;
.end method

.method public final native nativeRenderPageBitmap(JLandroid/graphics/Bitmap;IIIIIZ)V
.end method
