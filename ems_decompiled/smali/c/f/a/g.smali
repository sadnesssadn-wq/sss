.class public Lc/f/a/g;
.super Lc/f/a/y;
.source ""


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lc/f/a/y;-><init>()V

    iput-object p1, p0, Lc/f/a/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c(Lc/f/a/w;)Z
    .locals 1

    iget-object p1, p1, Lc/f/a/w;->d:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lc/f/a/w;I)Lc/f/a/y$a;
    .locals 1

    new-instance p2, Lc/f/a/y$a;

    .line 1
    iget-object v0, p0, Lc/f/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p1, p1, Lc/f/a/w;->d:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    sget-object v0, Lc/f/a/t$d;->e:Lc/f/a/t$d;

    invoke-direct {p2, p1, v0}, Lc/f/a/y$a;-><init>(Ljava/io/InputStream;Lc/f/a/t$d;)V

    return-object p2
.end method
