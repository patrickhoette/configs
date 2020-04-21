function gjr --description 'Gradle Jacoco Report'
	./gradlew clean test jacocoTestReportRelease jacocoTestReport && \
	open file://(pwd)/data/build/reports/jacoco/release/index.html && \
	open file://(pwd)/presentation/build/reports/jacoco/release/index.html && \
	open file://(pwd)/domain/build/reports/jacoco/test/html/index.html;
end

