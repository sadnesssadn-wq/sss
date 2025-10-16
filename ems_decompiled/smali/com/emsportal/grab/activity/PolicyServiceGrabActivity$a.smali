.class public Lcom/emsportal/grab/activity/PolicyServiceGrabActivity$a;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;


# direct methods
.method public constructor <init>(Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity$a;->a:Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity$a;->a:Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    new-instance v2, Ljava/net/URL;

    aget-object p1, p1, v0

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v2, p0, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity$a;->a:Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;

    invoke-virtual {v2, v0}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/io/InputStream;

    .line 1
    iget-object v0, p0, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity$a;->a:Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/emsportal/base/BaseNavigationActivity;->u(Z)V

    iget-object v0, p0, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity$a;->a:Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;

    .line 2
    iget-object v0, v0, Lcom/emsportal/grab/activity/PolicyServiceGrabActivity;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/github/barteksc/pdfviewer/PDFView$b;

    new-instance v3, Lc/c/a/a/m/a;

    invoke-direct {v3, p1}, Lc/c/a/a/m/a;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/github/barteksc/pdfviewer/PDFView$b;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lc/c/a/a/m/a;Lcom/github/barteksc/pdfviewer/PDFView$a;)V

    .line 4
    iput v1, v2, Lcom/github/barteksc/pdfviewer/PDFView$b;->d:I

    .line 5
    iput-boolean v1, v2, Lcom/github/barteksc/pdfviewer/PDFView$b;->e:Z

    .line 6
    sget-object p1, Lc/c/a/a/n/a;->c:Lc/c/a/a/n/a;

    .line 7
    iput-object p1, v2, Lcom/github/barteksc/pdfviewer/PDFView$b;->f:Lc/c/a/a/n/a;

    .line 8
    iput-boolean v1, v2, Lcom/github/barteksc/pdfviewer/PDFView$b;->h:Z

    .line 9
    iput-boolean v1, v2, Lcom/github/barteksc/pdfviewer/PDFView$b;->g:Z

    .line 10
    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView$b;->a()V

    return-void
.end method
