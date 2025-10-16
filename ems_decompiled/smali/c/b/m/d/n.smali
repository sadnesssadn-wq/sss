.class public Lc/b/m/d/n;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private id:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/b/m/d/n;->id:I

    iput-object p2, p0, Lc/b/m/d/n;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/b/m/d/n;->text:Ljava/lang/String;

    return-object v0
.end method
